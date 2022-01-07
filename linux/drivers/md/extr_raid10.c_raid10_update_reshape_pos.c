
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r10conf {scalar_t__ reshape_progress; } ;
struct mddev {scalar_t__ reshape_position; struct r10conf* private; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int (* resync_info_get ) (struct mddev*,scalar_t__*,scalar_t__*) ;} ;


 scalar_t__ MaxSector ;
 int WARN_ON_ONCE (int) ;
 TYPE_1__* md_cluster_ops ;
 int stub1 (struct mddev*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void raid10_update_reshape_pos(struct mddev *mddev)
{
 struct r10conf *conf = mddev->private;
 sector_t lo, hi;

 md_cluster_ops->resync_info_get(mddev, &lo, &hi);
 if (((mddev->reshape_position <= hi) && (mddev->reshape_position >= lo))
     || mddev->reshape_position == MaxSector)
  conf->reshape_progress = mddev->reshape_position;
 else
  WARN_ON_ONCE(1);
}
