
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int dummy; } ;
struct mddev {struct r1conf* private; } ;


 int freeze_array (struct r1conf*,int ) ;
 int unfreeze_array (struct r1conf*) ;

__attribute__((used)) static void raid1_quiesce(struct mddev *mddev, int quiesce)
{
 struct r1conf *conf = mddev->private;

 if (quiesce)
  freeze_array(conf, 0);
 else
  unfreeze_array(conf);
}
