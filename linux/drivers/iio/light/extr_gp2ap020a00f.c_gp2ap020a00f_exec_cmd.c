
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gp2ap020a00f_data {int flags; int cur_opmode; } ;
typedef enum gp2ap020a00f_cmd { ____Placeholder_gp2ap020a00f_cmd } gp2ap020a00f_cmd ;


 int EBUSY ;
 int GP2AP020A00F_ADD_MODE ;
 int GP2AP020A00F_FLAG_ALS_CLEAR_TRIGGER ;
 int GP2AP020A00F_FLAG_ALS_FALLING_EV ;
 int GP2AP020A00F_FLAG_ALS_IR_TRIGGER ;
 int GP2AP020A00F_FLAG_ALS_RISING_EV ;
 int GP2AP020A00F_FLAG_PROX_FALLING_EV ;
 int GP2AP020A00F_FLAG_PROX_RISING_EV ;
 int GP2AP020A00F_FLAG_PROX_TRIGGER ;
 int GP2AP020A00F_OPMODE_ALS ;
 int GP2AP020A00F_OPMODE_PROX_DETECT ;
 int GP2AP020A00F_OPMODE_PS ;
 int GP2AP020A00F_OPMODE_READ_RAW_CLEAR ;
 int GP2AP020A00F_OPMODE_READ_RAW_IR ;
 int GP2AP020A00F_OPMODE_READ_RAW_PROXIMITY ;
 int GP2AP020A00F_OPMODE_SHUTDOWN ;
 int GP2AP020A00F_SUBTRACT_MODE ;
 int GP2AP020A00F_THRESH_PH ;
 int GP2AP020A00F_THRESH_PL ;
 int GP2AP020A00F_THRESH_TH ;
 int GP2AP020A00F_THRESH_TL ;
 int clear_bit (int ,int *) ;
 int gp2ap020a00f_als_enabled (struct gp2ap020a00f_data*) ;
 int gp2ap020a00f_alter_opmode (struct gp2ap020a00f_data*,int ,int ) ;
 int gp2ap020a00f_prox_detect_enabled (struct gp2ap020a00f_data*) ;
 int gp2ap020a00f_set_operation_mode (struct gp2ap020a00f_data*,int ) ;
 int gp2ap020a00f_write_event_threshold (struct gp2ap020a00f_data*,int ,int) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int gp2ap020a00f_exec_cmd(struct gp2ap020a00f_data *data,
     enum gp2ap020a00f_cmd cmd)
{
 int err = 0;

 switch (cmd) {
 case 136:
  if (data->cur_opmode != GP2AP020A00F_OPMODE_SHUTDOWN)
   return -EBUSY;
  err = gp2ap020a00f_set_operation_mode(data,
     GP2AP020A00F_OPMODE_READ_RAW_CLEAR);
  break;
 case 135:
  if (data->cur_opmode != GP2AP020A00F_OPMODE_SHUTDOWN)
   return -EBUSY;
  err = gp2ap020a00f_set_operation_mode(data,
     GP2AP020A00F_OPMODE_READ_RAW_IR);
  break;
 case 134:
  if (data->cur_opmode != GP2AP020A00F_OPMODE_SHUTDOWN)
   return -EBUSY;
  err = gp2ap020a00f_set_operation_mode(data,
     GP2AP020A00F_OPMODE_READ_RAW_PROXIMITY);
  break;
 case 132:
  if (data->cur_opmode == GP2AP020A00F_OPMODE_PROX_DETECT)
   return -EBUSY;
  if (!gp2ap020a00f_als_enabled(data))
   err = gp2ap020a00f_alter_opmode(data,
      GP2AP020A00F_OPMODE_ALS,
      GP2AP020A00F_ADD_MODE);
  set_bit(GP2AP020A00F_FLAG_ALS_CLEAR_TRIGGER, &data->flags);
  break;
 case 133:
  clear_bit(GP2AP020A00F_FLAG_ALS_CLEAR_TRIGGER, &data->flags);
  if (gp2ap020a00f_als_enabled(data))
   break;
  err = gp2ap020a00f_alter_opmode(data,
      GP2AP020A00F_OPMODE_ALS,
      GP2AP020A00F_SUBTRACT_MODE);
  break;
 case 130:
  if (data->cur_opmode == GP2AP020A00F_OPMODE_PROX_DETECT)
   return -EBUSY;
  if (!gp2ap020a00f_als_enabled(data))
   err = gp2ap020a00f_alter_opmode(data,
      GP2AP020A00F_OPMODE_ALS,
      GP2AP020A00F_ADD_MODE);
  set_bit(GP2AP020A00F_FLAG_ALS_IR_TRIGGER, &data->flags);
  break;
 case 131:
  clear_bit(GP2AP020A00F_FLAG_ALS_IR_TRIGGER, &data->flags);
  if (gp2ap020a00f_als_enabled(data))
   break;
  err = gp2ap020a00f_alter_opmode(data,
      GP2AP020A00F_OPMODE_ALS,
      GP2AP020A00F_SUBTRACT_MODE);
  break;
 case 128:
  if (data->cur_opmode == GP2AP020A00F_OPMODE_PROX_DETECT)
   return -EBUSY;
  err = gp2ap020a00f_alter_opmode(data,
      GP2AP020A00F_OPMODE_PS,
      GP2AP020A00F_ADD_MODE);
  set_bit(GP2AP020A00F_FLAG_PROX_TRIGGER, &data->flags);
  break;
 case 129:
  clear_bit(GP2AP020A00F_FLAG_PROX_TRIGGER, &data->flags);
  err = gp2ap020a00f_alter_opmode(data,
      GP2AP020A00F_OPMODE_PS,
      GP2AP020A00F_SUBTRACT_MODE);
  break;
 case 143:
  if (test_bit(GP2AP020A00F_FLAG_ALS_RISING_EV, &data->flags))
   return 0;
  if (data->cur_opmode == GP2AP020A00F_OPMODE_PROX_DETECT)
   return -EBUSY;
  if (!gp2ap020a00f_als_enabled(data)) {
   err = gp2ap020a00f_alter_opmode(data,
      GP2AP020A00F_OPMODE_ALS,
      GP2AP020A00F_ADD_MODE);
   if (err < 0)
    return err;
  }
  set_bit(GP2AP020A00F_FLAG_ALS_RISING_EV, &data->flags);
  err = gp2ap020a00f_write_event_threshold(data,
     GP2AP020A00F_THRESH_TH, 1);
  break;
 case 144:
  if (!test_bit(GP2AP020A00F_FLAG_ALS_RISING_EV, &data->flags))
   return 0;
  clear_bit(GP2AP020A00F_FLAG_ALS_RISING_EV, &data->flags);
  if (!gp2ap020a00f_als_enabled(data)) {
   err = gp2ap020a00f_alter_opmode(data,
      GP2AP020A00F_OPMODE_ALS,
      GP2AP020A00F_SUBTRACT_MODE);
   if (err < 0)
    return err;
  }
  err = gp2ap020a00f_write_event_threshold(data,
     GP2AP020A00F_THRESH_TH, 0);
  break;
 case 141:
  if (test_bit(GP2AP020A00F_FLAG_ALS_FALLING_EV, &data->flags))
   return 0;
  if (data->cur_opmode == GP2AP020A00F_OPMODE_PROX_DETECT)
   return -EBUSY;
  if (!gp2ap020a00f_als_enabled(data)) {
   err = gp2ap020a00f_alter_opmode(data,
      GP2AP020A00F_OPMODE_ALS,
      GP2AP020A00F_ADD_MODE);
   if (err < 0)
    return err;
  }
  set_bit(GP2AP020A00F_FLAG_ALS_FALLING_EV, &data->flags);
  err = gp2ap020a00f_write_event_threshold(data,
     GP2AP020A00F_THRESH_TL, 1);
  break;
 case 142:
  if (!test_bit(GP2AP020A00F_FLAG_ALS_FALLING_EV, &data->flags))
   return 0;
  clear_bit(GP2AP020A00F_FLAG_ALS_FALLING_EV, &data->flags);
  if (!gp2ap020a00f_als_enabled(data)) {
   err = gp2ap020a00f_alter_opmode(data,
      GP2AP020A00F_OPMODE_ALS,
      GP2AP020A00F_SUBTRACT_MODE);
   if (err < 0)
    return err;
  }
  err = gp2ap020a00f_write_event_threshold(data,
     GP2AP020A00F_THRESH_TL, 0);
  break;
 case 139:
  if (test_bit(GP2AP020A00F_FLAG_PROX_RISING_EV, &data->flags))
   return 0;
  if (gp2ap020a00f_als_enabled(data) ||
      data->cur_opmode == GP2AP020A00F_OPMODE_PS)
   return -EBUSY;
  if (!gp2ap020a00f_prox_detect_enabled(data)) {
   err = gp2ap020a00f_set_operation_mode(data,
     GP2AP020A00F_OPMODE_PROX_DETECT);
   if (err < 0)
    return err;
  }
  set_bit(GP2AP020A00F_FLAG_PROX_RISING_EV, &data->flags);
  err = gp2ap020a00f_write_event_threshold(data,
     GP2AP020A00F_THRESH_PH, 1);
  break;
 case 140:
  if (!test_bit(GP2AP020A00F_FLAG_PROX_RISING_EV, &data->flags))
   return 0;
  clear_bit(GP2AP020A00F_FLAG_PROX_RISING_EV, &data->flags);
  err = gp2ap020a00f_set_operation_mode(data,
     GP2AP020A00F_OPMODE_SHUTDOWN);
  if (err < 0)
   return err;
  err = gp2ap020a00f_write_event_threshold(data,
     GP2AP020A00F_THRESH_PH, 0);
  break;
 case 137:
  if (test_bit(GP2AP020A00F_FLAG_PROX_FALLING_EV, &data->flags))
   return 0;
  if (gp2ap020a00f_als_enabled(data) ||
      data->cur_opmode == GP2AP020A00F_OPMODE_PS)
   return -EBUSY;
  if (!gp2ap020a00f_prox_detect_enabled(data)) {
   err = gp2ap020a00f_set_operation_mode(data,
     GP2AP020A00F_OPMODE_PROX_DETECT);
   if (err < 0)
    return err;
  }
  set_bit(GP2AP020A00F_FLAG_PROX_FALLING_EV, &data->flags);
  err = gp2ap020a00f_write_event_threshold(data,
     GP2AP020A00F_THRESH_PL, 1);
  break;
 case 138:
  if (!test_bit(GP2AP020A00F_FLAG_PROX_FALLING_EV, &data->flags))
   return 0;
  clear_bit(GP2AP020A00F_FLAG_PROX_FALLING_EV, &data->flags);
  err = gp2ap020a00f_set_operation_mode(data,
     GP2AP020A00F_OPMODE_SHUTDOWN);
  if (err < 0)
   return err;
  err = gp2ap020a00f_write_event_threshold(data,
     GP2AP020A00F_THRESH_PL, 0);
  break;
 }

 return err;
}
