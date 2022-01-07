
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct flexcop_device {TYPE_2__ (* read_ibi_reg ) (struct flexcop_device*,int ) ;int (* write_ibi_reg ) (struct flexcop_device*,int ,TYPE_2__) ;} ;
struct TYPE_8__ {int working_start; scalar_t__ st_done; int no_base_addr_ack_error; } ;
struct TYPE_9__ {int raw; TYPE_1__ tw_sm_c_100; } ;
typedef TYPE_2__ flexcop_ibi_value ;


 int EREMOTEIO ;
 int FC_MAX_I2C_RETRIES ;
 int deb_i2c (char*,...) ;
 TYPE_2__ ibi_zero ;
 int stub1 (struct flexcop_device*,int ,TYPE_2__) ;
 int stub2 (struct flexcop_device*,int ,TYPE_2__) ;
 TYPE_2__ stub3 (struct flexcop_device*,int ) ;
 int tw_sm_c_100 ;

__attribute__((used)) static int flexcop_i2c_operation(struct flexcop_device *fc,
  flexcop_ibi_value *r100)
{
 int i;
 flexcop_ibi_value r;

 r100->tw_sm_c_100.working_start = 1;
 deb_i2c("r100 before: %08x\n",r100->raw);

 fc->write_ibi_reg(fc, tw_sm_c_100, ibi_zero);
 fc->write_ibi_reg(fc, tw_sm_c_100, *r100);

 for (i = 0; i < FC_MAX_I2C_RETRIES; i++) {
  r = fc->read_ibi_reg(fc, tw_sm_c_100);

  if (!r.tw_sm_c_100.no_base_addr_ack_error) {
   if (r.tw_sm_c_100.st_done) {
    *r100 = r;
    deb_i2c("i2c success\n");
    return 0;
   }
  } else {
   deb_i2c("suffering from an i2c ack_error\n");
   return -EREMOTEIO;
  }
 }
 deb_i2c("tried %d times i2c operation, never finished or too many ack errors.\n",
  i);
 return -EREMOTEIO;
}
