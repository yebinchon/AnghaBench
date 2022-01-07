
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pp_power_level_change_request {int dummy; } ;
struct dc_context {int dummy; } ;



bool dm_pp_apply_power_level_change_request(
 const struct dc_context *ctx,
 struct dm_pp_power_level_change_request *level_change_req)
{

 return 0;
}
