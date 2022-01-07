
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int paddr; void* vaddr; } ;
struct TYPE_8__ {TYPE_2__ firmware; } ;
struct vic {int booted; int dev; TYPE_3__ falcon; TYPE_1__* config; } ;
struct iommu_fwspec {scalar_t__ num_ids; int* ids; } ;
struct TYPE_6__ {scalar_t__ supports_sid; } ;


 int CG_IDLE_CG_DLY_CNT (int) ;
 int CG_IDLE_CG_EN ;
 int CG_WAKEUP_DLY_CNT (int) ;
 int FCE_UCODE_SIZE_OFFSET ;
 int NV_PVIC_MISC_PRI_VIC_CG ;
 int TRANSCFG_ATT (int,int ) ;
 int TRANSCFG_SID_FALCON ;
 int TRANSCFG_SID_HW ;
 int VIC_SET_APPLICATION_ID ;
 int VIC_SET_FCE_UCODE_OFFSET ;
 int VIC_SET_FCE_UCODE_SIZE ;
 int VIC_TFBIF_TRANSCFG ;
 int VIC_THI_STREAMID0 ;
 int VIC_THI_STREAMID1 ;
 int VIC_UCODE_FCE_DATA_OFFSET ;
 int VIC_UCODE_FCE_HEADER_OFFSET ;
 int dev_err (int ,char*) ;
 struct iommu_fwspec* dev_iommu_fwspec_get (int ) ;
 int falcon_boot (TYPE_3__*) ;
 int falcon_execute_method (TYPE_3__*,int ,int) ;
 int falcon_wait_idle (TYPE_3__*) ;
 int vic_writel (struct vic*,int,int ) ;

__attribute__((used)) static int vic_boot(struct vic *vic)
{
 u32 fce_ucode_size, fce_bin_data_offset;
 void *hdr;
 int err = 0;

 if (vic->booted)
  return 0;
 vic_writel(vic, CG_IDLE_CG_DLY_CNT(4) |
   CG_IDLE_CG_EN |
   CG_WAKEUP_DLY_CNT(4),
     NV_PVIC_MISC_PRI_VIC_CG);

 err = falcon_boot(&vic->falcon);
 if (err < 0)
  return err;

 hdr = vic->falcon.firmware.vaddr;
 fce_bin_data_offset = *(u32 *)(hdr + VIC_UCODE_FCE_DATA_OFFSET);
 hdr = vic->falcon.firmware.vaddr +
  *(u32 *)(hdr + VIC_UCODE_FCE_HEADER_OFFSET);
 fce_ucode_size = *(u32 *)(hdr + FCE_UCODE_SIZE_OFFSET);

 falcon_execute_method(&vic->falcon, VIC_SET_APPLICATION_ID, 1);
 falcon_execute_method(&vic->falcon, VIC_SET_FCE_UCODE_SIZE,
         fce_ucode_size);
 falcon_execute_method(&vic->falcon, VIC_SET_FCE_UCODE_OFFSET,
         (vic->falcon.firmware.paddr + fce_bin_data_offset)
    >> 8);

 err = falcon_wait_idle(&vic->falcon);
 if (err < 0) {
  dev_err(vic->dev,
   "failed to set application ID and FCE base\n");
  return err;
 }

 vic->booted = 1;

 return 0;
}
