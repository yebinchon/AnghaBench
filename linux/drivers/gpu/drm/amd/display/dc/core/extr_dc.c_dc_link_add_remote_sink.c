
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct dc_sink_init_data {int link; } ;
struct TYPE_2__ {int length; int raw_edid; } ;
struct dc_sink {TYPE_1__ dc_edid; int edid_caps; } ;
struct dc_link {int ctx; } ;
typedef enum dc_edid_status { ____Placeholder_dc_edid_status } dc_edid_status ;


 int BREAK_TO_DEBUGGER () ;
 int DC_MAX_EDID_BUFFER_SIZE ;
 int EDID_OK ;
 struct dc_sink* dc_sink_create (struct dc_sink_init_data*) ;
 int dc_sink_release (struct dc_sink*) ;
 int dm_error (char*,...) ;
 int dm_helpers_parse_edid_caps (int ,TYPE_1__*,int *) ;
 int link_add_remote_sink_helper (struct dc_link*,struct dc_sink*) ;
 int memmove (int ,int const*,int) ;

struct dc_sink *dc_link_add_remote_sink(
  struct dc_link *link,
  const uint8_t *edid,
  int len,
  struct dc_sink_init_data *init_data)
{
 struct dc_sink *dc_sink;
 enum dc_edid_status edid_status;

 if (len > DC_MAX_EDID_BUFFER_SIZE) {
  dm_error("Max EDID buffer size breached!\n");
  return ((void*)0);
 }

 if (!init_data) {
  BREAK_TO_DEBUGGER();
  return ((void*)0);
 }

 if (!init_data->link) {
  BREAK_TO_DEBUGGER();
  return ((void*)0);
 }

 dc_sink = dc_sink_create(init_data);

 if (!dc_sink)
  return ((void*)0);

 memmove(dc_sink->dc_edid.raw_edid, edid, len);
 dc_sink->dc_edid.length = len;

 if (!link_add_remote_sink_helper(
   link,
   dc_sink))
  goto fail_add_sink;

 edid_status = dm_helpers_parse_edid_caps(
   link->ctx,
   &dc_sink->dc_edid,
   &dc_sink->edid_caps);





 if (edid_status != EDID_OK) {
  dc_sink->dc_edid.length = 0;
  dm_error("Bad EDID, status%d!\n", edid_status);
 }

 return dc_sink;

fail_add_sink:
 dc_sink_release(dc_sink);
 return ((void*)0);
}
