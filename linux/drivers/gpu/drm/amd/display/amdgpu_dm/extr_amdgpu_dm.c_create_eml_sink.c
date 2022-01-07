
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct edid {int extensions; } ;
struct dc_sink_init_data {int sink_signal; TYPE_3__* link; } ;
struct TYPE_5__ {scalar_t__ force; int override_edid; TYPE_1__* edid_blob_ptr; int name; } ;
struct amdgpu_dm_connector {scalar_t__ dc_sink; scalar_t__ dc_em_sink; TYPE_3__* dc_link; TYPE_2__ base; struct edid* edid; } ;
struct TYPE_6__ {scalar_t__ local_sink; } ;
struct TYPE_4__ {scalar_t__ data; } ;


 int DRM_ERROR (char*,int ) ;
 scalar_t__ DRM_FORCE_OFF ;
 scalar_t__ DRM_FORCE_ON ;
 int EDID_LENGTH ;
 int SIGNAL_TYPE_VIRTUAL ;
 scalar_t__ dc_link_add_remote_sink (TYPE_3__*,int *,int,struct dc_sink_init_data*) ;
 int dc_sink_retain (scalar_t__) ;

__attribute__((used)) static void create_eml_sink(struct amdgpu_dm_connector *aconnector)
{
 struct dc_sink_init_data init_params = {
   .link = aconnector->dc_link,
   .sink_signal = SIGNAL_TYPE_VIRTUAL
 };
 struct edid *edid;

 if (!aconnector->base.edid_blob_ptr) {
  DRM_ERROR("No EDID firmware found on connector: %s ,forcing to OFF!\n",
    aconnector->base.name);

  aconnector->base.force = DRM_FORCE_OFF;
  aconnector->base.override_edid = 0;
  return;
 }

 edid = (struct edid *) aconnector->base.edid_blob_ptr->data;

 aconnector->edid = edid;

 aconnector->dc_em_sink = dc_link_add_remote_sink(
  aconnector->dc_link,
  (uint8_t *)edid,
  (edid->extensions + 1) * EDID_LENGTH,
  &init_params);

 if (aconnector->base.force == DRM_FORCE_ON) {
  aconnector->dc_sink = aconnector->dc_link->local_sink ?
  aconnector->dc_link->local_sink :
  aconnector->dc_em_sink;
  dc_sink_retain(aconnector->dc_sink);
 }
}
