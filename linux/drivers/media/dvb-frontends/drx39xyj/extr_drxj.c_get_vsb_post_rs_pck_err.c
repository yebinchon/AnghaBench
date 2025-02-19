
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct i2c_device_addr {int dummy; } ;


 int EIO ;
 int FEC_RS_MEASUREMENT_PERIOD ;
 int FEC_RS_MEASUREMENT_PRESCALE ;
 int FEC_RS_NR_FAILURES_EXP__B ;
 int FEC_RS_NR_FAILURES_EXP__M ;
 int FEC_RS_NR_FAILURES_FIXED_MANT__M ;
 int FEC_RS_NR_FAILURES__A ;
 int drxj_dap_read_reg16 (struct i2c_device_addr*,int ,int*,int ) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int get_vsb_post_rs_pck_err(struct i2c_device_addr *dev_addr,
       u32 *pck_errs, u32 *pck_count)
{
 int rc;
 u16 data = 0;
 u16 period = 0;
 u16 prescale = 0;
 u16 packet_errors_mant = 0;
 u16 packet_errors_exp = 0;

 rc = drxj_dap_read_reg16(dev_addr, FEC_RS_NR_FAILURES__A, &data, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 packet_errors_mant = data & FEC_RS_NR_FAILURES_FIXED_MANT__M;
 packet_errors_exp = (data & FEC_RS_NR_FAILURES_EXP__M)
     >> FEC_RS_NR_FAILURES_EXP__B;
 period = FEC_RS_MEASUREMENT_PERIOD;
 prescale = FEC_RS_MEASUREMENT_PRESCALE;


 if (period * prescale == 0) {
  pr_err("error: period and/or prescale is zero!\n");
  return -EIO;
 }
 *pck_errs = packet_errors_mant * (1 << packet_errors_exp);
 *pck_count = period * prescale * 77;

 return 0;
rw_error:
 return rc;
}
