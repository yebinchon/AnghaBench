
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geni_i2c_dev {scalar_t__ clk_freq_out; struct geni_i2c_clk_fld const* clk_fld; } ;
struct geni_i2c_clk_fld {scalar_t__ clk_freq_out; } ;


 int ARRAY_SIZE (struct geni_i2c_clk_fld*) ;
 int EINVAL ;
 struct geni_i2c_clk_fld* geni_i2c_clk_map ;

__attribute__((used)) static int geni_i2c_clk_map_idx(struct geni_i2c_dev *gi2c)
{
 int i;
 const struct geni_i2c_clk_fld *itr = geni_i2c_clk_map;

 for (i = 0; i < ARRAY_SIZE(geni_i2c_clk_map); i++, itr++) {
  if (itr->clk_freq_out == gi2c->clk_freq_out) {
   gi2c->clk_fld = itr;
   return 0;
  }
 }
 return -EINVAL;
}
