
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int num_write_same_bios; } ;



__attribute__((used)) static unsigned get_num_write_same_bios(struct dm_target *ti)
{
 return ti->num_write_same_bios;
}
