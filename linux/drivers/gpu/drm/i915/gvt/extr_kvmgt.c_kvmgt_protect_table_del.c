
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmgt_pgfn {int hnode; } ;
struct kvmgt_guest_info {int dummy; } ;
typedef int gfn_t ;


 struct kvmgt_pgfn* __kvmgt_protect_table_find (struct kvmgt_guest_info*,int ) ;
 int hash_del (int *) ;
 int kfree (struct kvmgt_pgfn*) ;

__attribute__((used)) static void kvmgt_protect_table_del(struct kvmgt_guest_info *info,
    gfn_t gfn)
{
 struct kvmgt_pgfn *p;

 p = __kvmgt_protect_table_find(info, gfn);
 if (p) {
  hash_del(&p->hnode);
  kfree(p);
 }
}
