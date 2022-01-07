
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmgt_pgfn {int dummy; } ;
struct kvmgt_guest_info {int dummy; } ;
typedef int gfn_t ;


 struct kvmgt_pgfn* __kvmgt_protect_table_find (struct kvmgt_guest_info*,int ) ;

__attribute__((used)) static bool kvmgt_gfn_is_write_protected(struct kvmgt_guest_info *info,
    gfn_t gfn)
{
 struct kvmgt_pgfn *p;

 p = __kvmgt_protect_table_find(info, gfn);
 return !!p;
}
