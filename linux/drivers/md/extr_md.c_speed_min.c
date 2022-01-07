
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int sync_speed_min; } ;


 int sysctl_speed_limit_min ;

__attribute__((used)) static inline int speed_min(struct mddev *mddev)
{
 return mddev->sync_speed_min ?
  mddev->sync_speed_min : sysctl_speed_limit_min;
}
