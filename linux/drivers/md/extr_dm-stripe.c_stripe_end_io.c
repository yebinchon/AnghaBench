
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_c {unsigned int stripes; int trigger_event; TYPE_2__* stripe; } ;
struct dm_target {struct stripe_c* private; } ;
struct bio {int bi_opf; } ;
typedef int major_minor ;
typedef scalar_t__ blk_status_t ;
struct TYPE_4__ {int error_count; TYPE_1__* dev; } ;
struct TYPE_3__ {int name; } ;


 scalar_t__ BLK_STS_NOTSUPP ;
 int DM_ENDIO_DONE ;
 scalar_t__ DM_IO_ERROR_THRESHOLD ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int REQ_RAHEAD ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int bio_dev (struct bio*) ;
 int memset (char*,int ,int) ;
 int schedule_work (int *) ;
 int sprintf (char*,char*,int,int) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int stripe_end_io(struct dm_target *ti, struct bio *bio,
  blk_status_t *error)
{
 unsigned i;
 char major_minor[16];
 struct stripe_c *sc = ti->private;

 if (!*error)
  return DM_ENDIO_DONE;

 if (bio->bi_opf & REQ_RAHEAD)
  return DM_ENDIO_DONE;

 if (*error == BLK_STS_NOTSUPP)
  return DM_ENDIO_DONE;

 memset(major_minor, 0, sizeof(major_minor));
 sprintf(major_minor, "%d:%d", MAJOR(bio_dev(bio)), MINOR(bio_dev(bio)));







 for (i = 0; i < sc->stripes; i++)
  if (!strcmp(sc->stripe[i].dev->name, major_minor)) {
   atomic_inc(&(sc->stripe[i].error_count));
   if (atomic_read(&(sc->stripe[i].error_count)) <
       DM_IO_ERROR_THRESHOLD)
    schedule_work(&sc->trigger_event);
  }

 return DM_ENDIO_DONE;
}
