
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct i2c_command {int dummy; } ;
struct ddc_service {int ddc_pin; } ;
struct dc_link {struct ddc_service* ddc; } ;
struct dc {int res_pool; struct dc_link** links; } ;


 int dce_i2c_submit_command (int ,int ,struct i2c_command*) ;

bool dc_submit_i2c(
  struct dc *dc,
  uint32_t link_index,
  struct i2c_command *cmd)
{

 struct dc_link *link = dc->links[link_index];
 struct ddc_service *ddc = link->ddc;
 return dce_i2c_submit_command(
  dc->res_pool,
  ddc->ddc_pin,
  cmd);
}
