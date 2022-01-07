
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5conf {int max_degraded; TYPE_1__* mddev; } ;
struct TYPE_2__ {scalar_t__ reshape_position; int degraded; } ;


 scalar_t__ MaxSector ;
 int raid5_calc_degraded (struct r5conf*) ;

__attribute__((used)) static int has_failed(struct r5conf *conf)
{
 int degraded;

 if (conf->mddev->reshape_position == MaxSector)
  return conf->mddev->degraded > conf->max_degraded;

 degraded = raid5_calc_degraded(conf);
 if (degraded > conf->max_degraded)
  return 1;
 return 0;
}
