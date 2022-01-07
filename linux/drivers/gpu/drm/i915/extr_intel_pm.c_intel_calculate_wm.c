
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_watermark_params {int guard_size; int max_wm; int default_wm; int cacheline_size; } ;


 int DIV_ROUND_UP (int,int ) ;
 int DRM_DEBUG_KMS (char*,int) ;
 int intel_wm_method1 (int,int,unsigned int) ;

__attribute__((used)) static unsigned int intel_calculate_wm(int pixel_rate,
           const struct intel_watermark_params *wm,
           int fifo_size, int cpp,
           unsigned int latency_ns)
{
 int entries, wm_size;







 entries = intel_wm_method1(pixel_rate, cpp,
       latency_ns / 100);
 entries = DIV_ROUND_UP(entries, wm->cacheline_size) +
  wm->guard_size;
 DRM_DEBUG_KMS("FIFO entries required for mode: %d\n", entries);

 wm_size = fifo_size - entries;
 DRM_DEBUG_KMS("FIFO watermark level: %d\n", wm_size);


 if (wm_size > wm->max_wm)
  wm_size = wm->max_wm;
 if (wm_size <= 0)
  wm_size = wm->default_wm;
 if (wm_size <= 8)
  wm_size = 8;

 return wm_size;
}
