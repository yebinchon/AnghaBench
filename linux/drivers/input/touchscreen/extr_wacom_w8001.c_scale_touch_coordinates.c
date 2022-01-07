
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w8001 {unsigned int max_pen_x; unsigned int max_touch_x; unsigned int max_pen_y; unsigned int max_touch_y; } ;



__attribute__((used)) static void scale_touch_coordinates(struct w8001 *w8001,
        unsigned int *x, unsigned int *y)
{
 if (w8001->max_pen_x && w8001->max_touch_x)
  *x = *x * w8001->max_pen_x / w8001->max_touch_x;

 if (w8001->max_pen_y && w8001->max_touch_y)
  *y = *y * w8001->max_pen_y / w8001->max_touch_y;
}
