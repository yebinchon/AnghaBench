
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousedev {int mutex; int handle; int open; scalar_t__ exist; } ;


 int input_close_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mousedev_close_device(struct mousedev *mousedev)
{
 mutex_lock(&mousedev->mutex);

 if (mousedev->exist && !--mousedev->open)
  input_close_device(&mousedev->handle);

 mutex_unlock(&mousedev->mutex);
}
