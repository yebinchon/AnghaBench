
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {unsigned long dss_clk_rate; int dss_clk; } ;


 int DSSDBG (char*,unsigned long) ;
 int WARN_ONCE (int,char*,unsigned long,unsigned long) ;
 unsigned long clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned long) ;

int dss_set_fck_rate(struct dss_device *dss, unsigned long rate)
{
 int r;

 DSSDBG("set fck to %lu\n", rate);

 r = clk_set_rate(dss->dss_clk, rate);
 if (r)
  return r;

 dss->dss_clk_rate = clk_get_rate(dss->dss_clk);

 WARN_ONCE(dss->dss_clk_rate != rate, "clk rate mismatch: %lu != %lu",
    dss->dss_clk_rate, rate);

 return 0;
}
