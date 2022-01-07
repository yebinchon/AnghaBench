
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int devt; } ;
struct mousedev {TYPE_1__ dev; int handle; int cdev; } ;


 int MINOR (int ) ;
 int cdev_device_del (int *,TYPE_1__*) ;
 int input_free_minor (int ) ;
 int input_unregister_handle (int *) ;
 int mousedev_cleanup (struct mousedev*) ;
 struct mousedev* mousedev_mix ;
 int put_device (TYPE_1__*) ;

__attribute__((used)) static void mousedev_destroy(struct mousedev *mousedev)
{
 cdev_device_del(&mousedev->cdev, &mousedev->dev);
 mousedev_cleanup(mousedev);
 input_free_minor(MINOR(mousedev->dev.devt));
 if (mousedev != mousedev_mix)
  input_unregister_handle(&mousedev->handle);
 put_device(&mousedev->dev);
}
