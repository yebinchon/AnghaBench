
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct intel_dsi {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static const u8 *mipi_exec_delay(struct intel_dsi *intel_dsi, const u8 *data)
{
 u32 delay = *((const u32 *) data);

 DRM_DEBUG_KMS("\n");

 usleep_range(delay, delay + 10);
 data += 4;

 return data;
}
