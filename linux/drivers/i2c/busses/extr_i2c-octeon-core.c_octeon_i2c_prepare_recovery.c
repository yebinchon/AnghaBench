
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int SW_TWSI_EOP_TWSI_RST ;
 int TWSI_CTL_ENAB ;
 struct octeon_i2c* i2c_get_adapdata (struct i2c_adapter*) ;
 int octeon_i2c_ctl_write (struct octeon_i2c*,int ) ;
 int octeon_i2c_hlc_disable (struct octeon_i2c*) ;
 int octeon_i2c_reg_write (struct octeon_i2c*,int ,int ) ;
 int octeon_i2c_write_int (struct octeon_i2c*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void octeon_i2c_prepare_recovery(struct i2c_adapter *adap)
{
 struct octeon_i2c *i2c = i2c_get_adapdata(adap);

 octeon_i2c_hlc_disable(i2c);
 octeon_i2c_reg_write(i2c, SW_TWSI_EOP_TWSI_RST, 0);

 udelay(5);





 octeon_i2c_ctl_write(i2c, TWSI_CTL_ENAB);

 octeon_i2c_write_int(i2c, 0);
}
