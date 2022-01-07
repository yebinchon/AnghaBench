
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i2c_msg {unsigned int len; int addr; int * buf; } ;
struct drm_i915_private {int dummy; } ;


 int gmbus_max_xfer_size (struct drm_i915_private*) ;
 int gmbus_xfer_write_chunk (struct drm_i915_private*,int ,int *,unsigned int,int ) ;
 unsigned int min (unsigned int,int ) ;

__attribute__((used)) static int
gmbus_xfer_write(struct drm_i915_private *dev_priv, struct i2c_msg *msg,
   u32 gmbus1_index)
{
 u8 *buf = msg->buf;
 unsigned int tx_size = msg->len;
 unsigned int len;
 int ret;

 do {
  len = min(tx_size, gmbus_max_xfer_size(dev_priv));

  ret = gmbus_xfer_write_chunk(dev_priv, msg->addr, buf, len,
          gmbus1_index);
  if (ret)
   return ret;

  buf += len;
  tx_size -= len;
 } while (tx_size != 0);

 return 0;
}
