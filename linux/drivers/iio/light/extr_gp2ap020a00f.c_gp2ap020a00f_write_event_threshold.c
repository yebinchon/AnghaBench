
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gp2ap020a00f_data {int* thresh_val; int regmap; int flags; } ;
typedef enum gp2ap020a00f_thresh_val_id { ____Placeholder_gp2ap020a00f_thresh_val_id } gp2ap020a00f_thresh_val_id ;
typedef scalar_t__ __le16 ;


 int GP2AP020A00F_FLAG_LUX_MODE_HI ;
 int GP2AP020A00F_THRESH_PH ;
 int GP2AP020A00F_THRESH_PL ;
 int GP2AP020A00F_THRESH_REG (int) ;
 scalar_t__ cpu_to_le16 (unsigned int) ;
 int regmap_bulk_write (int ,int ,int *,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int gp2ap020a00f_write_event_threshold(struct gp2ap020a00f_data *data,
    enum gp2ap020a00f_thresh_val_id th_val_id,
    bool enable)
{
 __le16 thresh_buf = 0;
 unsigned int thresh_reg_val;

 if (!enable)
  thresh_reg_val = 0;
 else if (test_bit(GP2AP020A00F_FLAG_LUX_MODE_HI, &data->flags) &&
   th_val_id != GP2AP020A00F_THRESH_PL &&
   th_val_id != GP2AP020A00F_THRESH_PH)




  thresh_reg_val = data->thresh_val[th_val_id] / 16;
 else
  thresh_reg_val = data->thresh_val[th_val_id] > 16000 ?
     16000 :
     data->thresh_val[th_val_id];

 thresh_buf = cpu_to_le16(thresh_reg_val);

 return regmap_bulk_write(data->regmap,
     GP2AP020A00F_THRESH_REG(th_val_id),
     (u8 *)&thresh_buf, 2);
}
