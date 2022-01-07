
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int * proposed_mac; } ;
struct flexcop_device {scalar_t__ (* get_mac_addr ) (struct flexcop_device*,int ) ;TYPE_1__ dvb_adapter; } ;
struct TYPE_4__ {scalar_t__ raw; } ;


 int flexcop_determine_revision (struct flexcop_device*) ;
 int flexcop_device_exit (struct flexcop_device*) ;
 int flexcop_device_name (struct flexcop_device*,char*,char*) ;
 int flexcop_dvb_init (struct flexcop_device*) ;
 int flexcop_frontend_init (struct flexcop_device*) ;
 int flexcop_hw_filter_init (struct flexcop_device*) ;
 int flexcop_i2c_init (struct flexcop_device*) ;
 int flexcop_mac_filter_ctrl (struct flexcop_device*,int) ;
 int flexcop_reset (struct flexcop_device*) ;
 int flexcop_set_mac_filter (struct flexcop_device*,int *) ;
 int flexcop_smc_ctrl (struct flexcop_device*,int ) ;
 int flexcop_sram_init (struct flexcop_device*) ;
 TYPE_2__ ibi_zero ;
 int info (char*,int *) ;
 scalar_t__ stub1 (struct flexcop_device*,int ) ;
 int warn (char*) ;

int flexcop_device_initialize(struct flexcop_device *fc)
{
 int ret;
 ibi_zero.raw = 0;

 flexcop_reset(fc);
 flexcop_determine_revision(fc);
 flexcop_sram_init(fc);
 flexcop_hw_filter_init(fc);
 flexcop_smc_ctrl(fc, 0);

 ret = flexcop_dvb_init(fc);
 if (ret)
  goto error;



 ret = flexcop_i2c_init(fc);
 if (ret)
  goto error;


 if (fc->get_mac_addr(fc, 0) == 0) {
  u8 *b = fc->dvb_adapter.proposed_mac;
  info("MAC address = %pM", b);
  flexcop_set_mac_filter(fc,b);
  flexcop_mac_filter_ctrl(fc,1);
 } else
  warn("reading of MAC address failed.\n");

 ret = flexcop_frontend_init(fc);
 if (ret)
  goto error;

 flexcop_device_name(fc,"initialization of","complete");
 return 0;

error:
 flexcop_device_exit(fc);
 return ret;
}
