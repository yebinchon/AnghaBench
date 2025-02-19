
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mxt_object {scalar_t__ start_address; } ;
struct mxt_data {int xsize; int ysize; int xy_switch; int invertx; int inverty; int t100_aux_area; int t100_aux_ampl; int t100_aux_vect; void* max_y; void* max_x; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
typedef int range_y ;
typedef int range_x ;


 int EINVAL ;
 scalar_t__ MXT_T100_CFG1 ;
 int MXT_T100_CFG_INVERTX ;
 int MXT_T100_CFG_INVERTY ;
 int MXT_T100_CFG_SWITCHXY ;
 scalar_t__ MXT_T100_TCHAUX ;
 int MXT_T100_TCHAUX_AMPL ;
 int MXT_T100_TCHAUX_AREA ;
 int MXT_T100_TCHAUX_VECT ;
 scalar_t__ MXT_T100_XRANGE ;
 scalar_t__ MXT_T100_XSIZE ;
 scalar_t__ MXT_T100_YRANGE ;
 scalar_t__ MXT_T100_YSIZE ;
 int MXT_TOUCH_MULTITOUCHSCREEN_T100 ;
 int __mxt_read_reg (struct i2c_client*,scalar_t__,int,int*) ;
 int dev_dbg (int *,char*,int ,int ,int ) ;
 void* get_unaligned_le16 (int*) ;
 struct mxt_object* mxt_get_object (struct mxt_data*,int ) ;

__attribute__((used)) static int mxt_read_t100_config(struct mxt_data *data)
{
 struct i2c_client *client = data->client;
 int error;
 struct mxt_object *object;
 u16 range_x, range_y;
 u8 cfg, tchaux;
 u8 aux;

 object = mxt_get_object(data, MXT_TOUCH_MULTITOUCHSCREEN_T100);
 if (!object)
  return -EINVAL;


 error = __mxt_read_reg(client,
          object->start_address + MXT_T100_XRANGE,
          sizeof(range_x), &range_x);
 if (error)
  return error;

 data->max_x = get_unaligned_le16(&range_x);

 error = __mxt_read_reg(client,
          object->start_address + MXT_T100_YRANGE,
          sizeof(range_y), &range_y);
 if (error)
  return error;

 data->max_y = get_unaligned_le16(&range_y);

 error = __mxt_read_reg(client,
          object->start_address + MXT_T100_XSIZE,
          sizeof(data->xsize), &data->xsize);
 if (error)
  return error;

 error = __mxt_read_reg(client,
          object->start_address + MXT_T100_YSIZE,
          sizeof(data->ysize), &data->ysize);
 if (error)
  return error;


 error = __mxt_read_reg(client,
    object->start_address + MXT_T100_CFG1,
    1, &cfg);
 if (error)
  return error;

 data->xy_switch = cfg & MXT_T100_CFG_SWITCHXY;
 data->invertx = cfg & MXT_T100_CFG_INVERTX;
 data->inverty = cfg & MXT_T100_CFG_INVERTY;


 error = __mxt_read_reg(client,
    object->start_address + MXT_T100_TCHAUX,
    1, &tchaux);
 if (error)
  return error;

 aux = 6;

 if (tchaux & MXT_T100_TCHAUX_VECT)
  data->t100_aux_vect = aux++;

 if (tchaux & MXT_T100_TCHAUX_AMPL)
  data->t100_aux_ampl = aux++;

 if (tchaux & MXT_T100_TCHAUX_AREA)
  data->t100_aux_area = aux++;

 dev_dbg(&client->dev,
  "T100 aux mappings vect:%u ampl:%u area:%u\n",
  data->t100_aux_vect, data->t100_aux_ampl, data->t100_aux_area);

 return 0;
}
