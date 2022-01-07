
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int min_nr_stripes; } ;
struct mddev {int chunk_sectors; int new_chunk_sectors; struct r5conf* private; } ;


 int STRIPE_SIZE ;
 int max (int,int) ;
 int mdname (struct mddev*) ;
 int pr_warn (char*,int ,int) ;

__attribute__((used)) static int check_stripe_cache(struct mddev *mddev)
{
 struct r5conf *conf = mddev->private;
 if (((mddev->chunk_sectors << 9) / STRIPE_SIZE) * 4
     > conf->min_nr_stripes ||
     ((mddev->new_chunk_sectors << 9) / STRIPE_SIZE) * 4
     > conf->min_nr_stripes) {
  pr_warn("md/raid:%s: reshape: not enough stripes.  Needed %lu\n",
   mdname(mddev),
   ((max(mddev->chunk_sectors, mddev->new_chunk_sectors) << 9)
    / STRIPE_SIZE)*4);
  return 0;
 }
 return 1;
}
