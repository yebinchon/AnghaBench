
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int log; } ;
struct mddev {struct r5conf* private; } ;


 int r5l_start (int ) ;

__attribute__((used)) static int raid5_start(struct mddev *mddev)
{
 struct r5conf *conf = mddev->private;

 return r5l_start(conf->log);
}
