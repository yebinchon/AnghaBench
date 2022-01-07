
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int flags; scalar_t__ type; size_t minimum; size_t maximum; } ;
struct v4l2_ext_control {size_t value; } ;


 int EBUSY ;
 int EINVAL ;
 int ERANGE ;
 int V4L2_CTRL_FLAG_DISABLED ;
 int V4L2_CTRL_FLAG_GRABBED ;
 scalar_t__ V4L2_CTRL_TYPE_BITMASK ;
 scalar_t__ V4L2_CTRL_TYPE_BUTTON ;
 scalar_t__ V4L2_CTRL_TYPE_CTRL_CLASS ;
 scalar_t__ V4L2_CTRL_TYPE_INTEGER64 ;
 scalar_t__ V4L2_CTRL_TYPE_MENU ;
 scalar_t__ V4L2_CTRL_TYPE_STRING ;

__attribute__((used)) static int v4l2_ctrl_check(struct v4l2_ext_control *ctrl, struct v4l2_queryctrl *qctrl,
  const char * const *menu_items)
{
 if (qctrl->flags & V4L2_CTRL_FLAG_DISABLED)
  return -EINVAL;
 if (qctrl->flags & V4L2_CTRL_FLAG_GRABBED)
  return -EBUSY;
 if (qctrl->type == V4L2_CTRL_TYPE_STRING)
  return 0;
 if (qctrl->type == V4L2_CTRL_TYPE_BUTTON ||
     qctrl->type == V4L2_CTRL_TYPE_INTEGER64 ||
     qctrl->type == V4L2_CTRL_TYPE_CTRL_CLASS)
  return 0;
 if (ctrl->value < qctrl->minimum || ctrl->value > qctrl->maximum)
  return -ERANGE;
 if (qctrl->type == V4L2_CTRL_TYPE_MENU && menu_items != ((void*)0)) {
  if (menu_items[ctrl->value] == ((void*)0) ||
      menu_items[ctrl->value][0] == '\0')
   return -EINVAL;
 }
 if (qctrl->type == V4L2_CTRL_TYPE_BITMASK &&
   (ctrl->value & ~qctrl->maximum))
  return -ERANGE;
 return 0;
}
