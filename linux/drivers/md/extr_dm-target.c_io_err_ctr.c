
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int num_discard_bios; } ;



__attribute__((used)) static int io_err_ctr(struct dm_target *tt, unsigned int argc, char **args)
{



 tt->num_discard_bios = 1;

 return 0;
}
