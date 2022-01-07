
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int writes_pending; scalar_t__ ro; scalar_t__ in_sync; } ;
struct bio {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ WRITE ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int percpu_ref_get (int *) ;

void md_write_inc(struct mddev *mddev, struct bio *bi)
{
 if (bio_data_dir(bi) != WRITE)
  return;
 WARN_ON_ONCE(mddev->in_sync || mddev->ro);
 percpu_ref_get(&mddev->writes_pending);
}
