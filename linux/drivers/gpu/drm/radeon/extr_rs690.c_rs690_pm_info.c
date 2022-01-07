
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_20__ {int usMinHTLinkWidth; int ulHTLinkFreq; int ulBootUpUMAClock; int ulBootUpSidePortClock; } ;
struct TYPE_18__ {int ucHTLinkWidth; int usFSBClock; int usK8MemoryClock; int ulBootUpMemoryClock; } ;
union igp_info {TYPE_6__ info_v2; TYPE_4__ info; } ;
typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_23__ {void* full; } ;
struct TYPE_16__ {scalar_t__ full; } ;
struct TYPE_22__ {scalar_t__ full; } ;
struct TYPE_15__ {void* full; } ;
struct TYPE_21__ {TYPE_9__ sideport_bandwidth; TYPE_9__ igp_sideport_mclk; TYPE_2__ max_bandwidth; TYPE_9__ ht_bandwidth; TYPE_8__ igp_ht_link_width; TYPE_9__ igp_ht_link_clk; TYPE_9__ igp_system_mclk; TYPE_1__ k8_bandwidth; } ;
struct TYPE_19__ {int default_mclk; } ;
struct TYPE_17__ {TYPE_13__* atom_context; } ;
struct radeon_device {TYPE_7__ pm; TYPE_5__ clock; TYPE_3__ mode_info; } ;
typedef TYPE_8__ fixed20_12 ;
struct TYPE_14__ {scalar_t__ bios; } ;


 int DATA ;
 int DRM_ERROR (char*) ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int IntegratedSystemInfo ;
 scalar_t__ atom_parse_data_header (TYPE_13__*,int,int *,int*,int*,scalar_t__*) ;
 void* dfixed_const (int) ;
 void* dfixed_div (TYPE_9__,TYPE_8__) ;
 void* dfixed_mul (TYPE_9__,TYPE_8__) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

void rs690_pm_info(struct radeon_device *rdev)
{
 int index = GetIndexIntoMasterTable(DATA, IntegratedSystemInfo);
 union igp_info *info;
 uint16_t data_offset;
 uint8_t frev, crev;
 fixed20_12 tmp;

 if (atom_parse_data_header(rdev->mode_info.atom_context, index, ((void*)0),
       &frev, &crev, &data_offset)) {
  info = (union igp_info *)(rdev->mode_info.atom_context->bios + data_offset);


  switch (crev) {
  case 1:
   tmp.full = dfixed_const(100);
   rdev->pm.igp_sideport_mclk.full = dfixed_const(le32_to_cpu(info->info.ulBootUpMemoryClock));
   rdev->pm.igp_sideport_mclk.full = dfixed_div(rdev->pm.igp_sideport_mclk, tmp);
   if (le16_to_cpu(info->info.usK8MemoryClock))
    rdev->pm.igp_system_mclk.full = dfixed_const(le16_to_cpu(info->info.usK8MemoryClock));
   else if (rdev->clock.default_mclk) {
    rdev->pm.igp_system_mclk.full = dfixed_const(rdev->clock.default_mclk);
    rdev->pm.igp_system_mclk.full = dfixed_div(rdev->pm.igp_system_mclk, tmp);
   } else
    rdev->pm.igp_system_mclk.full = dfixed_const(400);
   rdev->pm.igp_ht_link_clk.full = dfixed_const(le16_to_cpu(info->info.usFSBClock));
   rdev->pm.igp_ht_link_width.full = dfixed_const(info->info.ucHTLinkWidth);
   break;
  case 2:
   tmp.full = dfixed_const(100);
   rdev->pm.igp_sideport_mclk.full = dfixed_const(le32_to_cpu(info->info_v2.ulBootUpSidePortClock));
   rdev->pm.igp_sideport_mclk.full = dfixed_div(rdev->pm.igp_sideport_mclk, tmp);
   if (le32_to_cpu(info->info_v2.ulBootUpUMAClock))
    rdev->pm.igp_system_mclk.full = dfixed_const(le32_to_cpu(info->info_v2.ulBootUpUMAClock));
   else if (rdev->clock.default_mclk)
    rdev->pm.igp_system_mclk.full = dfixed_const(rdev->clock.default_mclk);
   else
    rdev->pm.igp_system_mclk.full = dfixed_const(66700);
   rdev->pm.igp_system_mclk.full = dfixed_div(rdev->pm.igp_system_mclk, tmp);
   rdev->pm.igp_ht_link_clk.full = dfixed_const(le32_to_cpu(info->info_v2.ulHTLinkFreq));
   rdev->pm.igp_ht_link_clk.full = dfixed_div(rdev->pm.igp_ht_link_clk, tmp);
   rdev->pm.igp_ht_link_width.full = dfixed_const(le16_to_cpu(info->info_v2.usMinHTLinkWidth));
   break;
  default:

   rdev->pm.igp_sideport_mclk.full = dfixed_const(200);
   rdev->pm.igp_system_mclk.full = dfixed_const(200);
   rdev->pm.igp_ht_link_clk.full = dfixed_const(1000);
   rdev->pm.igp_ht_link_width.full = dfixed_const(8);
   DRM_ERROR("No integrated system info for your GPU, using safe default\n");
   break;
  }
 } else {

  rdev->pm.igp_sideport_mclk.full = dfixed_const(200);
  rdev->pm.igp_system_mclk.full = dfixed_const(200);
  rdev->pm.igp_ht_link_clk.full = dfixed_const(1000);
  rdev->pm.igp_ht_link_width.full = dfixed_const(8);
  DRM_ERROR("No integrated system info for your GPU, using safe default\n");
 }


 tmp.full = dfixed_const(4);
 rdev->pm.k8_bandwidth.full = dfixed_mul(rdev->pm.igp_system_mclk, tmp);



 tmp.full = dfixed_const(5);
 rdev->pm.ht_bandwidth.full = dfixed_mul(rdev->pm.igp_ht_link_clk,
      rdev->pm.igp_ht_link_width);
 rdev->pm.ht_bandwidth.full = dfixed_div(rdev->pm.ht_bandwidth, tmp);
 if (tmp.full < rdev->pm.max_bandwidth.full) {

  rdev->pm.max_bandwidth.full = tmp.full;
 }



 tmp.full = dfixed_const(14);
 rdev->pm.sideport_bandwidth.full = dfixed_mul(rdev->pm.igp_sideport_mclk, tmp);
 tmp.full = dfixed_const(10);
 rdev->pm.sideport_bandwidth.full = dfixed_div(rdev->pm.sideport_bandwidth, tmp);
}
