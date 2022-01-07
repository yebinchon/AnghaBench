
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {int dummy; } ;
typedef int s32 ;


 int cx2341x_ops ;
 struct v4l2_ctrl* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static struct v4l2_ctrl *cx2341x_ctrl_new_std(struct v4l2_ctrl_handler *hdl,
   u32 id, s32 min, s32 max, s32 step, s32 def)
{
 return v4l2_ctrl_new_std(hdl, &cx2341x_ops, id, min, max, step, def);
}
