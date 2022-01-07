
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i2c_msg {unsigned int len; int addr; int * buf; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ HAS_GMBUS_BURST_READ (struct drm_i915_private*) ;
 int INTEL_GMBUS_BURST_READ_MAX_LEN ;
 int gmbus_max_xfer_size (struct drm_i915_private*) ;
 int gmbus_xfer_read_chunk (struct drm_i915_private*,int ,int *,unsigned int,int ,int ) ;
 unsigned int min (unsigned int,int ) ;

__attribute__((used)) static int
gmbus_xfer_read(struct drm_i915_private *dev_priv, struct i2c_msg *msg,
  u32 gmbus0_reg, u32 gmbus1_index)
{
 u8 *buf = msg->buf;
 unsigned int rx_size = msg->len;
 unsigned int len;
 int ret;

 do {
  if (HAS_GMBUS_BURST_READ(dev_priv))
   len = min(rx_size, INTEL_GMBUS_BURST_READ_MAX_LEN);
  else
   len = min(rx_size, gmbus_max_xfer_size(dev_priv));

  ret = gmbus_xfer_read_chunk(dev_priv, msg->addr, buf, len,
         gmbus0_reg, gmbus1_index);
  if (ret)
   return ret;

  rx_size -= len;
  buf += len;
 } while (rx_size != 0);

 return 0;
}
