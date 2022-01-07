
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct geom {int dummy; } ;
struct r10conf {scalar_t__ reshape_progress; struct geom prev; TYPE_1__* mddev; struct geom geo; } ;
struct r10bio {scalar_t__ sector; int state; } ;
struct TYPE_2__ {int reshape_backwards; } ;


 scalar_t__ MaxSector ;
 int R10BIO_Previous ;
 int __raid10_find_phys (struct geom*,struct r10bio*) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void raid10_find_phys(struct r10conf *conf, struct r10bio *r10bio)
{
 struct geom *geo = &conf->geo;

 if (conf->reshape_progress != MaxSector &&
     ((r10bio->sector >= conf->reshape_progress) !=
      conf->mddev->reshape_backwards)) {
  set_bit(R10BIO_Previous, &r10bio->state);
  geo = &conf->prev;
 } else
  clear_bit(R10BIO_Previous, &r10bio->state);

 __raid10_find_phys(geo, r10bio);
}
