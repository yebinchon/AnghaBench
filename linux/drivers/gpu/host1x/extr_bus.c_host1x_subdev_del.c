
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_subdev {int np; int list; } ;


 int kfree (struct host1x_subdev*) ;
 int list_del (int *) ;
 int of_node_put (int ) ;

__attribute__((used)) static void host1x_subdev_del(struct host1x_subdev *subdev)
{
 list_del(&subdev->list);
 of_node_put(subdev->np);
 kfree(subdev);
}
