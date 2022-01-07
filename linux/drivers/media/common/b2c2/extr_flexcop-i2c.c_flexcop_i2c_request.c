
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct flexcop_i2c_adapter {int port; int fc; scalar_t__ no_base_addr; } ;
struct TYPE_5__ {int chipaddr; int total_bytes; int baseaddr; int twoWS_port_reg; scalar_t__ twoWS_rw; } ;
struct TYPE_6__ {TYPE_1__ tw_sm_c_100; scalar_t__ raw; } ;
typedef TYPE_2__ flexcop_ibi_value ;
typedef scalar_t__ flexcop_access_op_t ;


 scalar_t__ FC_READ ;
 scalar_t__ FC_WRITE ;
 int deb_i2c (char*,int ,char*,int,int,int) ;
 int deb_i2c_dump (char*,int ,char*,int,int,int,int*) ;
 int flexcop_i2c_read4 (struct flexcop_i2c_adapter*,TYPE_2__,int*) ;
 int flexcop_i2c_write4 (int ,TYPE_2__,int*) ;

int flexcop_i2c_request(struct flexcop_i2c_adapter *i2c,
   flexcop_access_op_t op, u8 chipaddr,
   u8 start_addr, u8 *buf, u16 size)
{
 int ret;
 int len = size;
 u8 *p;
 u8 addr = start_addr;

 u16 bytes_to_transfer;
 flexcop_ibi_value r100;

 deb_i2c("port %d %s(%02x): register %02x, size: %d\n",
  i2c->port,
  op == FC_READ ? "rd" : "wr",
  chipaddr, start_addr, size);
 r100.raw = 0;
 r100.tw_sm_c_100.chipaddr = chipaddr;
 r100.tw_sm_c_100.twoWS_rw = op;
 r100.tw_sm_c_100.twoWS_port_reg = i2c->port;




 if (i2c->no_base_addr && len == 0 && op == FC_WRITE) {
  buf = &start_addr;
  len = 1;
 }

 p = buf;

 while (len != 0) {
  bytes_to_transfer = len > 4 ? 4 : len;

  r100.tw_sm_c_100.total_bytes = bytes_to_transfer - 1;
  r100.tw_sm_c_100.baseaddr = addr;

  if (op == FC_READ)
   ret = flexcop_i2c_read4(i2c, r100, p);
  else
   ret = flexcop_i2c_write4(i2c->fc, r100, p);

  if (ret < 0)
   return ret;

  p += bytes_to_transfer;
  addr += bytes_to_transfer;
  len -= bytes_to_transfer;
 }
 deb_i2c_dump("port %d %s(%02x): register %02x: %*ph\n",
  i2c->port,
  op == FC_READ ? "rd" : "wr",
  chipaddr, start_addr, size, buf);

 return 0;
}
