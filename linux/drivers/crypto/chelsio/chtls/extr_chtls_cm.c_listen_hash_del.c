
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct listen_info {int stid; struct listen_info* next; struct sock* sk; } ;
struct chtls_dev {int listen_lock; struct listen_info** listen_hash_tab; } ;


 int kfree (struct listen_info*) ;
 int listen_hashfn (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int listen_hash_del(struct chtls_dev *cdev,
      struct sock *sk)
{
 struct listen_info *p, **prev;
 int stid = -1;
 int key;

 key = listen_hashfn(sk);
 prev = &cdev->listen_hash_tab[key];

 spin_lock(&cdev->listen_lock);
 for (p = *prev; p; prev = &p->next, p = p->next)
  if (p->sk == sk) {
   stid = p->stid;
   *prev = p->next;
   kfree(p);
   break;
  }
 spin_unlock(&cdev->listen_lock);
 return stid;
}
