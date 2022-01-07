
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int dummy; } ;
struct linear_conf {int dummy; } ;


 int kfree (struct linear_conf*) ;

__attribute__((used)) static void linear_free(struct mddev *mddev, void *priv)
{
 struct linear_conf *conf = priv;

 kfree(conf);
}
