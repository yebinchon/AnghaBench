
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int len; int addr; } ;
struct pgm_packet {int payload; TYPE_1__ header; } ;
struct i2c_msg {int* buf; int len; int addr; } ;
struct hideep_ts {TYPE_2__* client; scalar_t__ xfer_buf; } ;
typedef int __be32 ;
struct TYPE_4__ {int adapter; int addr; } ;


 int EINVAL ;
 int EIO ;
 size_t HIDEEP_NVM_PAGE_SIZE ;
 int cpu_to_be32 (int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memcpy (int ,int const*,size_t) ;

__attribute__((used)) static int hideep_pgm_w_mem(struct hideep_ts *ts, u32 addr,
       const __be32 *data, size_t count)
{
 struct pgm_packet *packet = (void *)ts->xfer_buf;
 size_t len = count * sizeof(*data);
 struct i2c_msg msg = {
  .addr = ts->client->addr,
  .len = len + sizeof(packet->header.len) +
    sizeof(packet->header.addr),
  .buf = &packet->header.len,
 };
 int ret;

 if (len > HIDEEP_NVM_PAGE_SIZE)
  return -EINVAL;

 packet->header.len = 0x80 | (count - 1);
 packet->header.addr = cpu_to_be32(addr);
 memcpy(packet->payload, data, len);

 ret = i2c_transfer(ts->client->adapter, &msg, 1);
 if (ret != 1)
  return ret < 0 ? ret : -EIO;

 return 0;
}
