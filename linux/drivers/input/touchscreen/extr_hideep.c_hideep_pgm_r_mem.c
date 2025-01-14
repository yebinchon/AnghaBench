
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_3__ {size_t len; int addr; } ;
struct pgm_packet {TYPE_1__ header; } ;
struct i2c_msg {int len; size_t* buf; int flags; int addr; } ;
struct hideep_ts {TYPE_2__* client; scalar_t__ xfer_buf; } ;
typedef int __be32 ;
struct TYPE_4__ {int adapter; int addr; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EINVAL ;
 int EIO ;
 size_t HIDEEP_NVM_PAGE_SIZE ;
 int I2C_M_RD ;
 int cpu_to_be32 (int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int hideep_pgm_r_mem(struct hideep_ts *ts, u32 addr,
       __be32 *data, size_t count)
{
 struct pgm_packet *packet = (void *)ts->xfer_buf;
 size_t len = count * sizeof(*data);
 struct i2c_msg msg[] = {
  {
   .addr = ts->client->addr,
   .len = sizeof(packet->header.len) +
     sizeof(packet->header.addr),
   .buf = &packet->header.len,
  },
  {
   .addr = ts->client->addr,
   .flags = I2C_M_RD,
   .len = len,
   .buf = (u8 *)data,
  },
 };
 int ret;

 if (len > HIDEEP_NVM_PAGE_SIZE)
  return -EINVAL;

 packet->header.len = count - 1;
 packet->header.addr = cpu_to_be32(addr);

 ret = i2c_transfer(ts->client->adapter, msg, ARRAY_SIZE(msg));
 if (ret != ARRAY_SIZE(msg))
  return ret < 0 ? ret : -EIO;

 return 0;
}
