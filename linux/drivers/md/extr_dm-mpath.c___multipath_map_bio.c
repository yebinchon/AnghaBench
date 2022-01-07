
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* dev; } ;
struct pgpath {TYPE_5__ path; TYPE_3__* pg; } ;
struct multipath {int hw_handler_name; } ;
struct dm_mpath_io {int nr_bytes; struct pgpath* pgpath; } ;
struct bio {int bi_opf; scalar_t__ bi_status; } ;
struct TYPE_9__ {TYPE_2__* type; } ;
struct TYPE_8__ {TYPE_4__ ps; } ;
struct TYPE_7__ {int (* start_io ) (TYPE_4__*,TYPE_5__*,int ) ;} ;
struct TYPE_6__ {int bdev; } ;


 int DM_MAPIO_KILL ;
 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_REQUEUE ;
 int DM_MAPIO_SUBMITTED ;
 scalar_t__ IS_ERR (struct pgpath*) ;
 int REQ_FAILFAST_TRANSPORT ;
 struct pgpath* __map_bio (struct multipath*,struct bio*) ;
 struct pgpath* __map_bio_fast (struct multipath*,struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int dm_report_EIO (struct multipath*) ;
 scalar_t__ must_push_back_bio (struct multipath*) ;
 int stub1 (TYPE_4__*,TYPE_5__*,int ) ;

__attribute__((used)) static int __multipath_map_bio(struct multipath *m, struct bio *bio,
          struct dm_mpath_io *mpio)
{
 struct pgpath *pgpath;

 if (!m->hw_handler_name)
  pgpath = __map_bio_fast(m, bio);
 else
  pgpath = __map_bio(m, bio);

 if (IS_ERR(pgpath))
  return DM_MAPIO_SUBMITTED;

 if (!pgpath) {
  if (must_push_back_bio(m))
   return DM_MAPIO_REQUEUE;
  dm_report_EIO(m);
  return DM_MAPIO_KILL;
 }

 mpio->pgpath = pgpath;

 bio->bi_status = 0;
 bio_set_dev(bio, pgpath->path.dev->bdev);
 bio->bi_opf |= REQ_FAILFAST_TRANSPORT;

 if (pgpath->pg->ps.type->start_io)
  pgpath->pg->ps.type->start_io(&pgpath->pg->ps,
           &pgpath->path,
           mpio->nr_bytes);
 return DM_MAPIO_REMAPPED;
}
