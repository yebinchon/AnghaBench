
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r0conf {struct r0conf* devlist; struct r0conf* strip_zone; } ;
struct mddev {int dummy; } ;


 int kfree (struct r0conf*) ;

__attribute__((used)) static void raid0_free(struct mddev *mddev, void *priv)
{
 struct r0conf *conf = priv;

 kfree(conf->strip_zone);
 kfree(conf->devlist);
 kfree(conf);
}
