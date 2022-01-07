
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ti_sn_bridge {int regmap; } ;
struct drm_dp_aux_msg {int request; int size; int address; scalar_t__ buffer; } ;
struct drm_dp_aux {int dummy; } ;
typedef int ssize_t ;


 int AUX_CMD_REQ (int) ;
 int AUX_CMD_SEND ;
 unsigned int AUX_IRQ_STATUS_AUX_RPLY_TOUT ;
 unsigned int AUX_IRQ_STATUS_AUX_SHORT ;
 unsigned int AUX_IRQ_STATUS_NAT_I2C_FAIL ;
 int DP_AUX_I2C_MOT ;




 int EINVAL ;
 int ENXIO ;
 int SN_AUX_ADDR_15_8_REG ;
 int SN_AUX_ADDR_19_16_REG ;
 int SN_AUX_ADDR_7_0_REG ;
 int SN_AUX_CMD_REG ;
 int SN_AUX_CMD_STATUS_REG ;
 int SN_AUX_LENGTH_REG ;
 int SN_AUX_MAX_PAYLOAD_BYTES ;
 int SN_AUX_RDATA_REG (int) ;
 int SN_AUX_WDATA_REG (int) ;
 int WARN_ON (unsigned int) ;
 struct ti_sn_bridge* aux_to_ti_sn_bridge (struct drm_dp_aux*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_read_poll_timeout (int ,int ,unsigned int,int,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static ssize_t ti_sn_aux_transfer(struct drm_dp_aux *aux,
      struct drm_dp_aux_msg *msg)
{
 struct ti_sn_bridge *pdata = aux_to_ti_sn_bridge(aux);
 u32 request = msg->request & ~DP_AUX_I2C_MOT;
 u32 request_val = AUX_CMD_REQ(msg->request);
 u8 *buf = (u8 *)msg->buffer;
 unsigned int val;
 int ret, i;

 if (msg->size > SN_AUX_MAX_PAYLOAD_BYTES)
  return -EINVAL;

 switch (request) {
 case 128:
 case 130:
 case 129:
 case 131:
  regmap_write(pdata->regmap, SN_AUX_CMD_REG, request_val);
  break;
 default:
  return -EINVAL;
 }

 regmap_write(pdata->regmap, SN_AUX_ADDR_19_16_REG,
       (msg->address >> 16) & 0xF);
 regmap_write(pdata->regmap, SN_AUX_ADDR_15_8_REG,
       (msg->address >> 8) & 0xFF);
 regmap_write(pdata->regmap, SN_AUX_ADDR_7_0_REG, msg->address & 0xFF);

 regmap_write(pdata->regmap, SN_AUX_LENGTH_REG, msg->size);

 if (request == 128 || request == 130) {
  for (i = 0; i < msg->size; i++)
   regmap_write(pdata->regmap, SN_AUX_WDATA_REG(i),
         buf[i]);
 }

 regmap_write(pdata->regmap, SN_AUX_CMD_REG, request_val | AUX_CMD_SEND);

 ret = regmap_read_poll_timeout(pdata->regmap, SN_AUX_CMD_REG, val,
           !(val & AUX_CMD_SEND), 200,
           50 * 1000);
 if (ret)
  return ret;

 ret = regmap_read(pdata->regmap, SN_AUX_CMD_STATUS_REG, &val);
 if (ret)
  return ret;
 else if ((val & AUX_IRQ_STATUS_NAT_I2C_FAIL)
   || (val & AUX_IRQ_STATUS_AUX_RPLY_TOUT)
   || (val & AUX_IRQ_STATUS_AUX_SHORT))
  return -ENXIO;

 if (request == 128 || request == 130)
  return msg->size;

 for (i = 0; i < msg->size; i++) {
  unsigned int val;
  ret = regmap_read(pdata->regmap, SN_AUX_RDATA_REG(i),
      &val);
  if (ret)
   return ret;

  WARN_ON(val & ~0xFF);
  buf[i] = (u8)(val & 0xFF);
 }

 return msg->size;
}
