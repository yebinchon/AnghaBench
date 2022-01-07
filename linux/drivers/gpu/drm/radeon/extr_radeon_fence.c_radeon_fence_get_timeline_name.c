
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_fence {int ring; } ;
struct dma_fence {int dummy; } ;
 int WARN_ON_ONCE (int) ;
 struct radeon_fence* to_radeon_fence (struct dma_fence*) ;

__attribute__((used)) static const char *radeon_fence_get_timeline_name(struct dma_fence *f)
{
 struct radeon_fence *fence = to_radeon_fence(f);
 switch (fence->ring) {
 case 130: return "radeon.gfx";
 case 135: return "radeon.cp1";
 case 134: return "radeon.cp2";
 case 132: return "radeon.dma";
 case 133: return "radeon.dma1";
 case 131: return "radeon.uvd";
 case 129: return "radeon.vce1";
 case 128: return "radeon.vce2";
 default: WARN_ON_ONCE(1); return "radeon.unk";
 }
}
