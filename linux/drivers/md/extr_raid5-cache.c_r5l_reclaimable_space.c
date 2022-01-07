
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r5l_log {int last_checkpoint; TYPE_2__* rdev; } ;
struct r5conf {int dummy; } ;
typedef int sector_t ;
struct TYPE_4__ {TYPE_1__* mddev; } ;
struct TYPE_3__ {struct r5conf* private; } ;


 int r5c_calculate_new_cp (struct r5conf*) ;
 int r5l_ring_distance (struct r5l_log*,int ,int ) ;

__attribute__((used)) static sector_t r5l_reclaimable_space(struct r5l_log *log)
{
 struct r5conf *conf = log->rdev->mddev->private;

 return r5l_ring_distance(log, log->last_checkpoint,
     r5c_calculate_new_cp(conf));
}
