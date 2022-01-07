
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmgt_guest_info {int ptable; } ;


 int hash_init (int ) ;

__attribute__((used)) static void kvmgt_protect_table_init(struct kvmgt_guest_info *info)
{
 hash_init(info->ptable);
}
