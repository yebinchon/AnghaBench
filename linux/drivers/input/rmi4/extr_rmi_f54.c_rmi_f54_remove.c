
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_function {int dev; } ;
struct f54_data {int v4l2; int vdev; } ;


 struct f54_data* dev_get_drvdata (int *) ;
 int v4l2_device_unregister (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void rmi_f54_remove(struct rmi_function *fn)
{
 struct f54_data *f54 = dev_get_drvdata(&fn->dev);

 video_unregister_device(&f54->vdev);
 v4l2_device_unregister(&f54->v4l2);
}
