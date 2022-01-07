
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union map_info {int dummy; } map_info ;
struct request {int dummy; } ;
struct pgpath {int path; TYPE_1__* pg; } ;
struct path_selector {TYPE_2__* type; } ;
struct multipath {int nr_valid_paths; } ;
struct dm_target {struct multipath* private; } ;
struct dm_mpath_io {int nr_bytes; struct pgpath* pgpath; } ;
typedef scalar_t__ blk_status_t ;
struct TYPE_4__ {int (* end_io ) (struct path_selector*,int *,int ) ;} ;
struct TYPE_3__ {struct path_selector ps; } ;


 scalar_t__ BLK_STS_IOERR ;
 scalar_t__ BLK_STS_RESOURCE ;
 int DM_ENDIO_DELAY_REQUEUE ;
 int DM_ENDIO_DONE ;
 int DM_ENDIO_REQUEUE ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ blk_path_error (scalar_t__) ;
 int dm_report_EIO (struct multipath*) ;
 int fail_path (struct pgpath*) ;
 struct dm_mpath_io* get_mpio (union map_info*) ;
 int must_push_back_rq (struct multipath*) ;
 int stub1 (struct path_selector*,int *,int ) ;

__attribute__((used)) static int multipath_end_io(struct dm_target *ti, struct request *clone,
       blk_status_t error, union map_info *map_context)
{
 struct dm_mpath_io *mpio = get_mpio(map_context);
 struct pgpath *pgpath = mpio->pgpath;
 int r = DM_ENDIO_DONE;
 if (error && blk_path_error(error)) {
  struct multipath *m = ti->private;

  if (error == BLK_STS_RESOURCE)
   r = DM_ENDIO_DELAY_REQUEUE;
  else
   r = DM_ENDIO_REQUEUE;

  if (pgpath)
   fail_path(pgpath);

  if (atomic_read(&m->nr_valid_paths) == 0 &&
      !must_push_back_rq(m)) {
   if (error == BLK_STS_IOERR)
    dm_report_EIO(m);

   r = DM_ENDIO_DONE;
  }
 }

 if (pgpath) {
  struct path_selector *ps = &pgpath->pg->ps;

  if (ps->type->end_io)
   ps->type->end_io(ps, &pgpath->path, mpio->nr_bytes);
 }

 return r;
}
