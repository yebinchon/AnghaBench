
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union map_info {int dummy; } map_info ;
struct request {int dummy; } ;
struct dm_target {int dummy; } ;


 int DM_MAPIO_KILL ;

__attribute__((used)) static int io_err_clone_and_map_rq(struct dm_target *ti, struct request *rq,
       union map_info *map_context,
       struct request **clone)
{
 return DM_MAPIO_KILL;
}
