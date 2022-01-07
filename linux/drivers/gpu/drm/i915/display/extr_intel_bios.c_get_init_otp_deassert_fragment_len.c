
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int** sequence; int seq_version; } ;
struct TYPE_4__ {TYPE_1__ dsi; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;



 int const MIPI_SEQ_ELEM_END ;


 size_t MIPI_SEQ_INIT_OTP ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int get_init_otp_deassert_fragment_len(struct drm_i915_private *dev_priv)
{
 const u8 *data = dev_priv->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP];
 int index, len;

 if (WARN_ON(!data || dev_priv->vbt.dsi.seq_version != 1))
  return 0;


 for (index = 1; data[index] != MIPI_SEQ_ELEM_END; index += len) {
  switch (data[index]) {
  case 128:
   return index == 1 ? 0 : index;
  case 130:
   len = 5;
   break;
  case 129:
   len = 3;
   break;
  default:
   return 0;
  }
 }

 return 0;
}
