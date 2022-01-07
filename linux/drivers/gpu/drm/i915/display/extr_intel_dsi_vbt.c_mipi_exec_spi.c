
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dsi {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;

__attribute__((used)) static const u8 *mipi_exec_spi(struct intel_dsi *intel_dsi, const u8 *data)
{
 DRM_DEBUG_KMS("Skipping SPI element execution\n");

 return data + *(data + 5) + 6;
}
