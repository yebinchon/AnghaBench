
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int dummy; } ;
struct mddev {int * to_remove; } ;


 int free_conf (struct r5conf*) ;
 int raid5_attrs_group ;

__attribute__((used)) static void raid5_free(struct mddev *mddev, void *priv)
{
 struct r5conf *conf = priv;

 free_conf(conf);
 mddev->to_remove = &raid5_attrs_group;
}
