
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct dss_device {int dss_clk; } ;


 int DSS_CLK_SRC_FCK ;
 unsigned long clk_get_rate (int ) ;
 char* dss_get_clk_source_name (int ) ;
 scalar_t__ dss_runtime_get (struct dss_device*) ;
 int dss_runtime_put (struct dss_device*) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void dss_dump_clocks(struct dss_device *dss, struct seq_file *s)
{
 const char *fclk_name;
 unsigned long fclk_rate;

 if (dss_runtime_get(dss))
  return;

 seq_printf(s, "- DSS -\n");

 fclk_name = dss_get_clk_source_name(DSS_CLK_SRC_FCK);
 fclk_rate = clk_get_rate(dss->dss_clk);

 seq_printf(s, "%s = %lu\n",
   fclk_name,
   fclk_rate);

 dss_runtime_put(dss);
}
