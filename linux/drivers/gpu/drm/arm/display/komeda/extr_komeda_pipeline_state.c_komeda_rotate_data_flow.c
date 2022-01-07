
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct komeda_data_flow_cfg {int total_in_w; int total_in_h; int in_w; int in_h; } ;


 scalar_t__ drm_rotation_90_or_270 (int ) ;
 int swap (int ,int ) ;

__attribute__((used)) static void
komeda_rotate_data_flow(struct komeda_data_flow_cfg *dflow, u32 rot)
{
 if (drm_rotation_90_or_270(rot)) {
  swap(dflow->in_h, dflow->in_w);
  swap(dflow->total_in_h, dflow->total_in_w);
 }
}
