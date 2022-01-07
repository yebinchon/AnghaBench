
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ DSC; } ;
struct TYPE_4__ {TYPE_1__ flags; } ;
struct dc_stream_state {TYPE_2__ timing; } ;
struct dc_state {int dummy; } ;
struct dc {int dummy; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;


 int DC_ERROR_UNEXPECTED ;
 int DC_OK ;
 int add_dsc_to_stream_resource (struct dc*,struct dc_state*,struct dc_stream_state*) ;
 int dcn20_build_mapped_resource (struct dc*,struct dc_state*,struct dc_stream_state*) ;
 int resource_map_phy_clock_resources (struct dc*,struct dc_state*,struct dc_stream_state*) ;
 int resource_map_pool_resources (struct dc*,struct dc_state*,struct dc_stream_state*) ;

enum dc_status dcn20_add_stream_to_ctx(struct dc *dc, struct dc_state *new_ctx, struct dc_stream_state *dc_stream)
{
 enum dc_status result = DC_ERROR_UNEXPECTED;

 result = resource_map_pool_resources(dc, new_ctx, dc_stream);

 if (result == DC_OK)
  result = resource_map_phy_clock_resources(dc, new_ctx, dc_stream);







 if (result == DC_OK)
  result = dcn20_build_mapped_resource(dc, new_ctx, dc_stream);

 return result;
}
