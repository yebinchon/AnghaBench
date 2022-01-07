
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_ctx {size_t nr_paths; TYPE_1__* path_list; } ;
struct dm_target {char* error; int table; struct switch_ctx* private; } ;
struct dm_arg_set {int dummy; } ;
typedef unsigned long long sector_t ;
struct TYPE_2__ {unsigned long long start; int dmdev; } ;


 int EINVAL ;
 int dm_get_device (struct dm_target*,int ,int ,int *) ;
 int dm_put_device (struct dm_target*,int ) ;
 int dm_shift_arg (struct dm_arg_set*) ;
 int dm_table_get_mode (int ) ;
 scalar_t__ kstrtoull (int ,int,unsigned long long*) ;

__attribute__((used)) static int parse_path(struct dm_arg_set *as, struct dm_target *ti)
{
 struct switch_ctx *sctx = ti->private;
 unsigned long long start;
 int r;

 r = dm_get_device(ti, dm_shift_arg(as), dm_table_get_mode(ti->table),
     &sctx->path_list[sctx->nr_paths].dmdev);
 if (r) {
  ti->error = "Device lookup failed";
  return r;
 }

 if (kstrtoull(dm_shift_arg(as), 10, &start) || start != (sector_t)start) {
  ti->error = "Invalid device starting offset";
  dm_put_device(ti, sctx->path_list[sctx->nr_paths].dmdev);
  return -EINVAL;
 }

 sctx->path_list[sctx->nr_paths].start = start;

 sctx->nr_paths++;

 return 0;
}
