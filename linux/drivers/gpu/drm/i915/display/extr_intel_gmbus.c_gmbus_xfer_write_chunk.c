
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int GMBUS1 ;
 int GMBUS3 ;
 unsigned int GMBUS_BYTE_COUNT_SHIFT ;
 int GMBUS_CYCLE_WAIT ;
 int GMBUS_HW_RDY ;
 int GMBUS_HW_RDY_EN ;
 unsigned short GMBUS_SLAVE_ADDR_SHIFT ;
 int GMBUS_SLAVE_WRITE ;
 int GMBUS_SW_RDY ;
 int I915_WRITE_FW (int ,int) ;
 int gmbus_wait (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static int
gmbus_xfer_write_chunk(struct drm_i915_private *dev_priv,
         unsigned short addr, u8 *buf, unsigned int len,
         u32 gmbus1_index)
{
 unsigned int chunk_size = len;
 u32 val, loop;

 val = loop = 0;
 while (len && loop < 4) {
  val |= *buf++ << (8 * loop++);
  len -= 1;
 }

 I915_WRITE_FW(GMBUS3, val);
 I915_WRITE_FW(GMBUS1,
        gmbus1_index | GMBUS_CYCLE_WAIT |
        (chunk_size << GMBUS_BYTE_COUNT_SHIFT) |
        (addr << GMBUS_SLAVE_ADDR_SHIFT) |
        GMBUS_SLAVE_WRITE | GMBUS_SW_RDY);
 while (len) {
  int ret;

  val = loop = 0;
  do {
   val |= *buf++ << (8 * loop);
  } while (--len && ++loop < 4);

  I915_WRITE_FW(GMBUS3, val);

  ret = gmbus_wait(dev_priv, GMBUS_HW_RDY, GMBUS_HW_RDY_EN);
  if (ret)
   return ret;
 }

 return 0;
}
