
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rect {int width; int height; int y; int x; } ;
struct dce_transform {int dummy; } ;


 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 int VIEWPORT_HEIGHT ;
 int VIEWPORT_SIZE ;
 int VIEWPORT_START ;
 int VIEWPORT_WIDTH ;
 int VIEWPORT_X_START ;
 int VIEWPORT_Y_START ;

__attribute__((used)) static void program_viewport(
 struct dce_transform *xfm_dce,
 const struct rect *view_port)
{
 REG_SET_2(VIEWPORT_START, 0,
   VIEWPORT_X_START, view_port->x,
   VIEWPORT_Y_START, view_port->y);

 REG_SET_2(VIEWPORT_SIZE, 0,
   VIEWPORT_HEIGHT, view_port->height,
   VIEWPORT_WIDTH, view_port->width);


}
