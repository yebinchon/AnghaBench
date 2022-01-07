
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct touchscreen_properties {int max_x; int max_y; } ;
struct mms114_data {scalar_t__ type; int contact_threshold; int moving_threshold; struct touchscreen_properties props; } ;


 int MMS114_CONTACT_THRESHOLD ;
 int MMS114_MOVING_THRESHOLD ;
 int MMS114_XY_RESOLUTION_H ;
 int MMS114_X_RESOLUTION ;
 int MMS114_Y_RESOLUTION ;
 scalar_t__ TYPE_MMS152 ;
 int mms114_get_version (struct mms114_data*) ;
 int mms114_set_active (struct mms114_data*,int) ;
 int mms114_write_reg (struct mms114_data*,int ,int) ;

__attribute__((used)) static int mms114_setup_regs(struct mms114_data *data)
{
 const struct touchscreen_properties *props = &data->props;
 int val;
 int error;

 error = mms114_get_version(data);
 if (error < 0)
  return error;


 if (data->type == TYPE_MMS152)
  return 0;

 error = mms114_set_active(data, 1);
 if (error < 0)
  return error;

 val = (props->max_x >> 8) & 0xf;
 val |= ((props->max_y >> 8) & 0xf) << 4;
 error = mms114_write_reg(data, MMS114_XY_RESOLUTION_H, val);
 if (error < 0)
  return error;

 val = props->max_x & 0xff;
 error = mms114_write_reg(data, MMS114_X_RESOLUTION, val);
 if (error < 0)
  return error;

 val = props->max_x & 0xff;
 error = mms114_write_reg(data, MMS114_Y_RESOLUTION, val);
 if (error < 0)
  return error;

 if (data->contact_threshold) {
  error = mms114_write_reg(data, MMS114_CONTACT_THRESHOLD,
    data->contact_threshold);
  if (error < 0)
   return error;
 }

 if (data->moving_threshold) {
  error = mms114_write_reg(data, MMS114_MOVING_THRESHOLD,
    data->moving_threshold);
  if (error < 0)
   return error;
 }

 return 0;
}
