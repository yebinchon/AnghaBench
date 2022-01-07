
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wtp_data {int flip_y; scalar_t__ resolution; int maxcontacts; int y_size; int x_size; int mt_feature_index; } ;
struct hidpp_touchpad_raw_info {scalar_t__ origin; scalar_t__ res; int maxcontacts; int y_size; int x_size; int member_0; } ;
struct hidpp_device {struct wtp_data* private_data; } ;


 int HIDPP_PAGE_TOUCHPAD_RAW_XY ;
 scalar_t__ TOUCHPAD_RAW_XY_ORIGIN_LOWER_LEFT ;
 scalar_t__ WTP_MANUAL_RESOLUTION ;
 int hidpp_root_get_feature (struct hidpp_device*,int ,int *,int *) ;
 int hidpp_touchpad_get_raw_info (struct hidpp_device*,int ,struct hidpp_touchpad_raw_info*) ;

__attribute__((used)) static int wtp_get_config(struct hidpp_device *hidpp)
{
 struct wtp_data *wd = hidpp->private_data;
 struct hidpp_touchpad_raw_info raw_info = {0};
 u8 feature_type;
 int ret;

 ret = hidpp_root_get_feature(hidpp, HIDPP_PAGE_TOUCHPAD_RAW_XY,
  &wd->mt_feature_index, &feature_type);
 if (ret)

  return ret;

 ret = hidpp_touchpad_get_raw_info(hidpp, wd->mt_feature_index,
  &raw_info);
 if (ret)
  return ret;

 wd->x_size = raw_info.x_size;
 wd->y_size = raw_info.y_size;
 wd->maxcontacts = raw_info.maxcontacts;
 wd->flip_y = raw_info.origin == TOUCHPAD_RAW_XY_ORIGIN_LOWER_LEFT;
 wd->resolution = raw_info.res;
 if (!wd->resolution)
  wd->resolution = WTP_MANUAL_RESOLUTION;

 return 0;
}
