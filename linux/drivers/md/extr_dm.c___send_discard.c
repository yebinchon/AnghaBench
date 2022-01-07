
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct clone_info {int dummy; } ;


 int __send_changing_extent_only (struct clone_info*,struct dm_target*,int ) ;
 int get_num_discard_bios (struct dm_target*) ;

__attribute__((used)) static int __send_discard(struct clone_info *ci, struct dm_target *ti)
{
 return __send_changing_extent_only(ci, ti, get_num_discard_bios(ti));
}
