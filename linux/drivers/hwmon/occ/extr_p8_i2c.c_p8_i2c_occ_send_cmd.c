
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct p8_i2c_occ {struct i2c_client* client; } ;
struct occ_response {int return_status; int data_length; } ;
struct occ {struct occ_response resp; } ;
struct i2c_client {int dummy; } ;


 int EALREADY ;
 int EINVAL ;
 int EMSGSIZE ;
 int EPROTO ;
 int EREMOTEIO ;
 int ETIMEDOUT ;
 int OCB_ADDR ;
 int OCB_DATA1 ;
 int OCB_DATA3 ;
 int OCC_CMD_IN_PRG_WAIT_MS ;
 int OCC_DATA_ATTN ;
 int OCC_RESP_DATA_BYTES ;



 int OCC_SRAM_ADDR_CMD ;
 int OCC_SRAM_ADDR_RESP ;
 int OCC_TIMEOUT_MS ;
 int TASK_INTERRUPTIBLE ;
 int get_unaligned_be16 (int *) ;
 unsigned long jiffies ;
 void* msecs_to_jiffies (int ) ;
 int p8_i2c_occ_getscom (struct i2c_client*,int ,int *) ;
 int p8_i2c_occ_putscom_be (struct i2c_client*,int ,int *) ;
 int p8_i2c_occ_putscom_u32 (struct i2c_client*,int ,int ,int ) ;
 int schedule_timeout (long const) ;
 int set_current_state (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 struct p8_i2c_occ* to_p8_i2c_occ (struct occ*) ;

__attribute__((used)) static int p8_i2c_occ_send_cmd(struct occ *occ, u8 *cmd)
{
 int i, rc;
 unsigned long start;
 u16 data_length;
 const unsigned long timeout = msecs_to_jiffies(OCC_TIMEOUT_MS);
 const long wait_time = msecs_to_jiffies(OCC_CMD_IN_PRG_WAIT_MS);
 struct p8_i2c_occ *ctx = to_p8_i2c_occ(occ);
 struct i2c_client *client = ctx->client;
 struct occ_response *resp = &occ->resp;

 start = jiffies;


 rc = p8_i2c_occ_putscom_u32(client, OCB_ADDR, OCC_SRAM_ADDR_CMD, 0);
 if (rc)
  return rc;


 rc = p8_i2c_occ_putscom_be(client, OCB_DATA3, cmd);
 if (rc)
  return rc;


 rc = p8_i2c_occ_putscom_u32(client, OCB_DATA1, OCC_DATA_ATTN, 0);
 if (rc)
  return rc;

 do {

  rc = p8_i2c_occ_putscom_u32(client, OCB_ADDR,
         OCC_SRAM_ADDR_RESP, 0);
  if (rc)
   return rc;

  rc = p8_i2c_occ_getscom(client, OCB_DATA3, (u8 *)resp);
  if (rc)
   return rc;


  if (resp->return_status == 137) {
   rc = -EALREADY;

   if (time_after(jiffies, start + timeout))
    break;

   set_current_state(TASK_INTERRUPTIBLE);
   schedule_timeout(wait_time);
  }
 } while (rc);


 switch (resp->return_status) {
 case 137:
  rc = -ETIMEDOUT;
  break;
 case 128:
  rc = 0;
  break;
 case 138:
 case 136:
 case 130:
 case 139:
  rc = -EINVAL;
  break;
 case 129:
 case 140:
 case 135:
 case 133:
 case 131:
 case 132:
 case 134:
  rc = -EREMOTEIO;
  break;
 default:
  rc = -EPROTO;
 }

 if (rc < 0)
  return rc;

 data_length = get_unaligned_be16(&resp->data_length);
 if (data_length > OCC_RESP_DATA_BYTES)
  return -EMSGSIZE;


 for (i = 8; i < data_length + 7; i += 8) {
  rc = p8_i2c_occ_getscom(client, OCB_DATA3, ((u8 *)resp) + i);
  if (rc)
   return rc;
 }

 return 0;
}
