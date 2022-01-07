
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpconf {struct mpconf* multipaths; int pool; } ;
struct mddev {int dummy; } ;


 int kfree (struct mpconf*) ;
 int mempool_exit (int *) ;

__attribute__((used)) static void multipath_free(struct mddev *mddev, void *priv)
{
 struct mpconf *conf = priv;

 mempool_exit(&conf->pool);
 kfree(conf->multipaths);
 kfree(conf);
}
