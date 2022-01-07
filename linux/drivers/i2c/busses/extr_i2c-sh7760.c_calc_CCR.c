
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned long rate; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 unsigned long abs (unsigned long) ;
 struct clk* clk_get (int *,char*) ;
 int clk_put (struct clk*) ;

__attribute__((used)) static int calc_CCR(unsigned long scl_hz)
{
 struct clk *mclk;
 unsigned long mck, m1, dff, odff, iclk;
 signed char cdf, cdfm;
 int scgd, scgdm, scgds;

 mclk = clk_get(((void*)0), "peripheral_clk");
 if (IS_ERR(mclk)) {
  return PTR_ERR(mclk);
 } else {
  mck = mclk->rate;
  clk_put(mclk);
 }

 odff = scl_hz;
 scgdm = cdfm = m1 = 0;
 for (cdf = 3; cdf >= 0; cdf--) {
  iclk = mck / (1 + cdf);
  if (iclk >= 20000000)
   continue;
  scgds = ((iclk / scl_hz) - 20) >> 3;
  for (scgd = scgds; (scgd < 63) && scgd <= scgds + 1; scgd++) {
   m1 = iclk / (20 + (scgd << 3));
   dff = abs(scl_hz - m1);
   if (dff < odff) {
    odff = dff;
    cdfm = cdf;
    scgdm = scgd;
   }
  }
 }

 if (odff > (scl_hz >> 2))
  return -EINVAL;


 return ((scgdm << 2) | cdfm);
}
