
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;



__attribute__((used)) static inline void
display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
        enum pipe pipe,
        u32 crc0, u32 crc1,
        u32 crc2, u32 crc3,
        u32 crc4) {}
