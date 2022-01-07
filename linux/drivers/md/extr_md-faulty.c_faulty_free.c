
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int dummy; } ;
struct faulty_conf {int dummy; } ;


 int kfree (struct faulty_conf*) ;

__attribute__((used)) static void faulty_free(struct mddev *mddev, void *priv)
{
 struct faulty_conf *conf = priv;

 kfree(conf);
}
