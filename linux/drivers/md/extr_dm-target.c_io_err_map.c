
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct bio {int dummy; } ;


 int DM_MAPIO_KILL ;

__attribute__((used)) static int io_err_map(struct dm_target *tt, struct bio *bio)
{
 return DM_MAPIO_KILL;
}
