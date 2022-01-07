
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ulDentistVCOFreq; } ;
union igp_info {TYPE_2__ info_6; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct radeon_mode_info {TYPE_3__* atom_context; } ;
struct TYPE_4__ {int vco_freq; } ;
struct radeon_device {TYPE_1__ clock; struct radeon_mode_info mode_info; } ;
struct TYPE_6__ {scalar_t__ bios; } ;


 int DATA ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int IntegratedSystemInfo ;
 scalar_t__ atom_parse_data_header (TYPE_3__*,int,int *,int *,int *,scalar_t__*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void radeon_atombios_get_dentist_vco_freq(struct radeon_device *rdev)
{
 struct radeon_mode_info *mode_info = &rdev->mode_info;
 int index = GetIndexIntoMasterTable(DATA, IntegratedSystemInfo);
 union igp_info *igp_info;
 u8 frev, crev;
 u16 data_offset;

 if (atom_parse_data_header(mode_info->atom_context, index, ((void*)0),
   &frev, &crev, &data_offset)) {
  igp_info = (union igp_info *)(mode_info->atom_context->bios +
   data_offset);
  rdev->clock.vco_freq =
   le32_to_cpu(igp_info->info_6.ulDentistVCOFreq);
 }
}
