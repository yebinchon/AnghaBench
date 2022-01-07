
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct pgpath {scalar_t__ is_active; TYPE_2__ path; } ;
struct TYPE_3__ {int bdev; } ;


 int SCSI_DH_DEV_OFFLINED ;
 struct request_queue* bdev_get_queue (int ) ;
 int blk_queue_dying (struct request_queue*) ;
 int pg_init_done (struct pgpath*,int ) ;
 int scsi_dh_activate (struct request_queue*,int (*) (struct pgpath*,int ),struct pgpath*) ;

__attribute__((used)) static void activate_or_offline_path(struct pgpath *pgpath)
{
 struct request_queue *q = bdev_get_queue(pgpath->path.dev->bdev);

 if (pgpath->is_active && !blk_queue_dying(q))
  scsi_dh_activate(q, pg_init_done, pgpath);
 else
  pg_init_done(pgpath, SCSI_DH_DEV_OFFLINED);
}
