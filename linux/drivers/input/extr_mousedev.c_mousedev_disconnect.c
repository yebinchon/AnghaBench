
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousedev {int dummy; } ;
struct input_handle {struct mousedev* private; } ;


 int mixdev_remove_device (struct mousedev*) ;
 int mousedev_destroy (struct mousedev*) ;

__attribute__((used)) static void mousedev_disconnect(struct input_handle *handle)
{
 struct mousedev *mousedev = handle->private;

 mixdev_remove_device(mousedev);
 mousedev_destroy(mousedev);
}
