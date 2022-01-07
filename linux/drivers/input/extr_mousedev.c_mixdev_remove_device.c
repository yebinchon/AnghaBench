
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mousedev {int opened_by_mixdev; int dev; int mixdev_node; } ;
struct TYPE_2__ {int mutex; } ;


 int list_del_init (int *) ;
 int mousedev_close_device (struct mousedev*) ;
 TYPE_1__* mousedev_mix ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void mixdev_remove_device(struct mousedev *mousedev)
{
 mutex_lock(&mousedev_mix->mutex);

 if (mousedev->opened_by_mixdev) {
  mousedev->opened_by_mixdev = 0;
  mousedev_close_device(mousedev);
 }

 list_del_init(&mousedev->mixdev_node);
 mutex_unlock(&mousedev_mix->mutex);

 put_device(&mousedev->dev);
}
