
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int abs_event; int y; } ;
struct mousedev {TYPE_1__ packet; } ;
struct input_dev {int dummy; } ;




 int clamp (int,int,int) ;
 int input_abs_get_max (struct input_dev*,int const) ;
 int input_abs_get_min (struct input_dev*,int const) ;
 int xres ;
 int yres ;

__attribute__((used)) static void mousedev_abs_event(struct input_dev *dev, struct mousedev *mousedev,
    unsigned int code, int value)
{
 int min, max, size;

 switch (code) {

 case 129:
  min = input_abs_get_min(dev, 129);
  max = input_abs_get_max(dev, 129);

  size = max - min;
  if (size == 0)
   size = xres ? : 1;

  value = clamp(value, min, max);

  mousedev->packet.x = ((value - min) * xres) / size;
  mousedev->packet.abs_event = 1;
  break;

 case 128:
  min = input_abs_get_min(dev, 128);
  max = input_abs_get_max(dev, 128);

  size = max - min;
  if (size == 0)
   size = yres ? : 1;

  value = clamp(value, min, max);

  mousedev->packet.y = yres - ((value - min) * yres) / size;
  mousedev->packet.abs_event = 1;
  break;
 }
}
