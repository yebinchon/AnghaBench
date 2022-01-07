
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dsi {scalar_t__ operation_mode; } ;


 scalar_t__ INTEL_DSI_VIDEO_MODE ;

__attribute__((used)) static inline bool is_vid_mode(struct intel_dsi *intel_dsi)
{
 return intel_dsi->operation_mode == INTEL_DSI_VIDEO_MODE;
}
