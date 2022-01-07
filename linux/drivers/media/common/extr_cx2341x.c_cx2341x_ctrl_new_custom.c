
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl_config {scalar_t__ type; void* menu_skip_mask; void* step; int qmenu; void* def; void* max; void* min; int id; int * ops; int flags; int name; } ;
struct v4l2_ctrl {int dummy; } ;
typedef void* s32 ;
typedef int cfg ;


 scalar_t__ V4L2_CTRL_TYPE_MENU ;
 int cx2341x_ctrl_fill (int ,int *,scalar_t__*,void**,void**,void**,void**,int *) ;
 int cx2341x_get_menu (int ) ;
 int cx2341x_ops ;
 int memset (struct v4l2_ctrl_config*,int ,int) ;
 struct v4l2_ctrl* v4l2_ctrl_new_custom (struct v4l2_ctrl_handler*,struct v4l2_ctrl_config*,int *) ;

__attribute__((used)) static struct v4l2_ctrl *cx2341x_ctrl_new_custom(struct v4l2_ctrl_handler *hdl,
   u32 id, s32 min, s32 max, s32 step, s32 def)
{
 struct v4l2_ctrl_config cfg;

 memset(&cfg, 0, sizeof(cfg));
 cx2341x_ctrl_fill(id, &cfg.name, &cfg.type, &min, &max, &step, &def, &cfg.flags);
 cfg.ops = &cx2341x_ops;
 cfg.id = id;
 cfg.min = min;
 cfg.max = max;
 cfg.def = def;
 if (cfg.type == V4L2_CTRL_TYPE_MENU) {
  cfg.step = 0;
  cfg.menu_skip_mask = step;
  cfg.qmenu = cx2341x_get_menu(id);
 } else {
  cfg.step = step;
  cfg.menu_skip_mask = 0;
 }
 return v4l2_ctrl_new_custom(hdl, &cfg, ((void*)0));
}
