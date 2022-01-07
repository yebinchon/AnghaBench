
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;
struct abp_state {int mreq_len; struct i2c_client* client; } ;
typedef int buf ;
typedef scalar_t__ __be16 ;


 int ABP060MG_ERROR_MASK ;
 int ABP060MG_MAX_COUNTS ;
 int ABP060MG_MIN_COUNTS ;
 int ABP060MG_RESP_TIME_MS ;
 int EIO ;
 int IIO_VAL_INT ;
 int be16_to_cpu (scalar_t__) ;
 int i2c_master_recv (struct i2c_client*,int *,int) ;
 int i2c_master_send (struct i2c_client*,int *,int ) ;
 int msleep_interruptible (int ) ;

__attribute__((used)) static int abp060mg_get_measurement(struct abp_state *state, int *val)
{
 struct i2c_client *client = state->client;
 __be16 buf[2];
 u16 pressure;
 int ret;

 buf[0] = 0;
 ret = i2c_master_send(client, (u8 *)&buf, state->mreq_len);
 if (ret < 0)
  return ret;

 msleep_interruptible(ABP060MG_RESP_TIME_MS);

 ret = i2c_master_recv(client, (u8 *)&buf, sizeof(buf));
 if (ret < 0)
  return ret;

 pressure = be16_to_cpu(buf[0]);
 if (pressure & ABP060MG_ERROR_MASK)
  return -EIO;

 if (pressure < ABP060MG_MIN_COUNTS || pressure > ABP060MG_MAX_COUNTS)
  return -EIO;

 *val = pressure;

 return IIO_VAL_INT;
}
