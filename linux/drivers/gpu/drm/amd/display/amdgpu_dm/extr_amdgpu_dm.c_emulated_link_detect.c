
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display_sink_capability {int signal; void* transaction_type; int member_0; } ;
struct dc_sink_init_data {int sink_signal; struct dc_link* link; int member_0; } ;
struct dc_sink {int dummy; } ;
struct dc_link {int connector_signal; struct dc_context* ctx; struct dc_sink* local_sink; int type; } ;
struct dc_context {int dummy; } ;
typedef enum dc_edid_status { ____Placeholder_dc_edid_status } dc_edid_status ;


 int DC_ERROR (char*,...) ;
 void* DDC_TRANSACTION_TYPE_I2C ;
 void* DDC_TRANSACTION_TYPE_I2C_OVER_AUX ;
 int EDID_OK ;






 int SIGNAL_TYPE_VIRTUAL ;
 int dc_connection_none ;
 struct dc_sink* dc_sink_create (struct dc_sink_init_data*) ;
 int dc_sink_retain (struct dc_sink*) ;
 int dm_helpers_read_local_edid (struct dc_context*,struct dc_link*,struct dc_sink*) ;

__attribute__((used)) static void emulated_link_detect(struct dc_link *link)
{
 struct dc_sink_init_data sink_init_data = { 0 };
 struct display_sink_capability sink_caps = { 0 };
 enum dc_edid_status edid_status;
 struct dc_context *dc_ctx = link->ctx;
 struct dc_sink *sink = ((void*)0);
 struct dc_sink *prev_sink = ((void*)0);

 link->type = dc_connection_none;
 prev_sink = link->local_sink;

 if (prev_sink != ((void*)0))
  dc_sink_retain(prev_sink);

 switch (link->connector_signal) {
 case 129: {
  sink_caps.transaction_type = DDC_TRANSACTION_TYPE_I2C;
  sink_caps.signal = 129;
  break;
 }

 case 131: {
  sink_caps.transaction_type = DDC_TRANSACTION_TYPE_I2C;
  sink_caps.signal = 131;
  break;
 }

 case 132: {
  sink_caps.transaction_type = DDC_TRANSACTION_TYPE_I2C;
  sink_caps.signal = 132;
  break;
 }

 case 128: {
  sink_caps.transaction_type = DDC_TRANSACTION_TYPE_I2C;
  sink_caps.signal = 128;
  break;
 }

 case 130: {
  sink_caps.transaction_type =
   DDC_TRANSACTION_TYPE_I2C_OVER_AUX;
  sink_caps.signal = 130;
  break;
 }

 case 133: {
  sink_caps.transaction_type =
   DDC_TRANSACTION_TYPE_I2C_OVER_AUX;
  sink_caps.signal = SIGNAL_TYPE_VIRTUAL;
  break;
 }

 default:
  DC_ERROR("Invalid connector type! signal:%d\n",
   link->connector_signal);
  return;
 }

 sink_init_data.link = link;
 sink_init_data.sink_signal = sink_caps.signal;

 sink = dc_sink_create(&sink_init_data);
 if (!sink) {
  DC_ERROR("Failed to create sink!\n");
  return;
 }


 link->local_sink = sink;

 edid_status = dm_helpers_read_local_edid(
   link->ctx,
   link,
   sink);

 if (edid_status != EDID_OK)
  DC_ERROR("Failed to read EDID");

}
