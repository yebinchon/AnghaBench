
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {int twsi_freq; int sys_freq; } ;


 int SW_TWSI_EOP_TWSI_CLKCTL ;
 int SW_TWSI_OP_TWSI_CLK ;
 int abs (int) ;
 int octeon_i2c_reg_write (struct octeon_i2c*,int ,int) ;

void octeon_i2c_set_clock(struct octeon_i2c *i2c)
{
 int tclk, thp_base, inc, thp_idx, mdiv_idx, ndiv_idx, foscl, diff;
 int thp = 0x18, mdiv = 2, ndiv = 0, delta_hz = 1000000;

 for (ndiv_idx = 0; ndiv_idx < 8 && delta_hz != 0; ndiv_idx++) {




  for (mdiv_idx = 15; mdiv_idx >= 2 && delta_hz != 0; mdiv_idx--) {




   tclk = i2c->twsi_freq * (mdiv_idx + 1) * 10;
   tclk *= (1 << ndiv_idx);
   thp_base = (i2c->sys_freq / (tclk * 2)) - 1;

   for (inc = 0; inc <= 1; inc++) {
    thp_idx = thp_base + inc;
    if (thp_idx < 5 || thp_idx > 0xff)
     continue;

    foscl = i2c->sys_freq / (2 * (thp_idx + 1));
    foscl = foscl / (1 << ndiv_idx);
    foscl = foscl / (mdiv_idx + 1) / 10;
    diff = abs(foscl - i2c->twsi_freq);
    if (diff < delta_hz) {
     delta_hz = diff;
     thp = thp_idx;
     mdiv = mdiv_idx;
     ndiv = ndiv_idx;
    }
   }
  }
 }
 octeon_i2c_reg_write(i2c, SW_TWSI_OP_TWSI_CLK, thp);
 octeon_i2c_reg_write(i2c, SW_TWSI_EOP_TWSI_CLKCTL, (mdiv << 3) | ndiv);
}
