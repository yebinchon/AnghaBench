
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi {scalar_t__ external_bridge; scalar_t__ panel; } ;



__attribute__((used)) static inline bool msm_dsi_device_connected(struct msm_dsi *msm_dsi)
{
 return msm_dsi->panel || msm_dsi->external_bridge;
}
