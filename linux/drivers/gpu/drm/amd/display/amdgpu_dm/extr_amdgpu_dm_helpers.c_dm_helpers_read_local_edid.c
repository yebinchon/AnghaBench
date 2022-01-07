
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {int EDID_CHECKSUM_WRITE; } ;
struct TYPE_14__ {int member_0; } ;
union test_response {int raw; TYPE_7__ bits; TYPE_5__ member_0; } ;
struct TYPE_15__ {int EDID_READ; } ;
struct TYPE_13__ {int member_0; } ;
union test_request {TYPE_6__ bits; int raw; TYPE_4__ member_0; } ;
typedef int uint8_t ;
typedef int test_response ;
struct i2c_adapter {int dummy; } ;
struct edid {int extensions; } ;
struct TYPE_18__ {int length; int * raw_edid; } ;
struct dc_sink {TYPE_9__ dc_edid; int edid_caps; } ;
struct dc_link {scalar_t__ aux_mode; struct amdgpu_dm_connector* priv; } ;
struct dc_context {int dummy; } ;
struct TYPE_17__ {int name; } ;
struct TYPE_10__ {struct i2c_adapter ddc; } ;
struct TYPE_11__ {TYPE_1__ aux; } ;
struct amdgpu_dm_connector {TYPE_8__ base; TYPE_3__* i2c; TYPE_2__ dm_dp_aux; } ;
typedef enum dc_edid_status { ____Placeholder_dc_edid_status } dc_edid_status ;
struct TYPE_12__ {struct i2c_adapter base; } ;


 int DP_TEST_EDID_CHECKSUM ;
 int DP_TEST_REQUEST ;
 int DP_TEST_RESPONSE ;
 int DRM_ERROR (char*,int,int ) ;
 int EDID_BAD_CHECKSUM ;
 int EDID_LENGTH ;
 int EDID_NO_RESPONSE ;
 int EDID_OK ;
 int dm_helpers_dp_read_dpcd (struct dc_context*,struct dc_link*,int ,int *,int) ;
 int dm_helpers_dp_write_dpcd (struct dc_context*,struct dc_link*,int ,int *,int) ;
 int dm_helpers_parse_edid_caps (struct dc_context*,TYPE_9__*,int *) ;
 struct edid* drm_get_edid (TYPE_8__*,struct i2c_adapter*) ;
 int kfree (struct edid*) ;
 int memmove (int *,int *,int) ;

enum dc_edid_status dm_helpers_read_local_edid(
  struct dc_context *ctx,
  struct dc_link *link,
  struct dc_sink *sink)
{
 struct amdgpu_dm_connector *aconnector = link->priv;
 struct i2c_adapter *ddc;
 int retry = 3;
 enum dc_edid_status edid_status;
 struct edid *edid;

 if (link->aux_mode)
  ddc = &aconnector->dm_dp_aux.aux.ddc;
 else
  ddc = &aconnector->i2c->base;




 do {

  edid = drm_get_edid(&aconnector->base, ddc);

  if (!edid)
   return EDID_NO_RESPONSE;

  sink->dc_edid.length = EDID_LENGTH * (edid->extensions + 1);
  memmove(sink->dc_edid.raw_edid, (uint8_t *)edid, sink->dc_edid.length);


  kfree(edid);

  edid_status = dm_helpers_parse_edid_caps(
      ctx,
      &sink->dc_edid,
      &sink->edid_caps);

 } while (edid_status == EDID_BAD_CHECKSUM && --retry > 0);

 if (edid_status != EDID_OK)
  DRM_ERROR("EDID err: %d, on connector: %s",
    edid_status,
    aconnector->base.name);
 if (link->aux_mode) {
  union test_request test_request = { {0} };
  union test_response test_response = { {0} };

  dm_helpers_dp_read_dpcd(ctx,
     link,
     DP_TEST_REQUEST,
     &test_request.raw,
     sizeof(union test_request));

  if (!test_request.bits.EDID_READ)
   return edid_status;

  test_response.bits.EDID_CHECKSUM_WRITE = 1;

  dm_helpers_dp_write_dpcd(ctx,
     link,
     DP_TEST_EDID_CHECKSUM,
     &sink->dc_edid.raw_edid[sink->dc_edid.length-1],
     1);

  dm_helpers_dp_write_dpcd(ctx,
     link,
     DP_TEST_RESPONSE,
     &test_response.raw,
     sizeof(test_response));

 }

 return edid_status;
}
