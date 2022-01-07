
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct listen_info {unsigned int stid; struct listen_info* next; struct sock* sk; } ;
struct chtls_dev {int listen_lock; struct listen_info** listen_hash_tab; } ;


 int GFP_KERNEL ;
 struct listen_info* kmalloc (int,int ) ;
 int listen_hashfn (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct listen_info *listen_hash_add(struct chtls_dev *cdev,
        struct sock *sk,
        unsigned int stid)
{
 struct listen_info *p = kmalloc(sizeof(*p), GFP_KERNEL);

 if (p) {
  int key = listen_hashfn(sk);

  p->sk = sk;
  p->stid = stid;
  spin_lock(&cdev->listen_lock);
  p->next = cdev->listen_hash_tab[key];
  cdev->listen_hash_tab[key] = p;
  spin_unlock(&cdev->listen_lock);
 }
 return p;
}
