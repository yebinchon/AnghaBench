
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmgt_pgfn {int hnode; int gfn; } ;
struct kvmgt_guest_info {int ptable; } ;
typedef int gfn_t ;


 int GFP_ATOMIC ;
 scalar_t__ WARN (int,char*,int ) ;
 int hash_add (int ,int *,int ) ;
 scalar_t__ kvmgt_gfn_is_write_protected (struct kvmgt_guest_info*,int ) ;
 struct kvmgt_pgfn* kzalloc (int,int ) ;

__attribute__((used)) static void kvmgt_protect_table_add(struct kvmgt_guest_info *info, gfn_t gfn)
{
 struct kvmgt_pgfn *p;

 if (kvmgt_gfn_is_write_protected(info, gfn))
  return;

 p = kzalloc(sizeof(struct kvmgt_pgfn), GFP_ATOMIC);
 if (WARN(!p, "gfn: 0x%llx\n", gfn))
  return;

 p->gfn = gfn;
 hash_add(info->ptable, &p->hnode, gfn);
}
