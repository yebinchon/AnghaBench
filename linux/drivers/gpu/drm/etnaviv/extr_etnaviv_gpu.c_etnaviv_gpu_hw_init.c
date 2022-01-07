
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int revision; } ;
struct etnaviv_gpu {scalar_t__ sec_mode; TYPE_1__ identity; } ;


 scalar_t__ ETNA_SEC_KERNEL ;
 int GC2000 ;
 int GC320 ;
 int VIVS_HI_AXI_CONFIG ;
 unsigned int VIVS_HI_AXI_CONFIG_ARCACHE (int) ;
 unsigned int VIVS_HI_AXI_CONFIG_AWCACHE (int) ;
 int VIVS_HI_CHIP_TIME ;
 int VIVS_HI_INTR_ENBL ;
 int VIVS_MC_BUS_CONFIG ;
 int VIVS_MC_BUS_CONFIG_FE_BUS_CONFIG (int) ;
 int VIVS_MC_BUS_CONFIG_FE_BUS_CONFIG__MASK ;
 int VIVS_MC_BUS_CONFIG_TX_BUS_CONFIG (int ) ;
 int VIVS_MC_BUS_CONFIG_TX_BUS_CONFIG__MASK ;
 int VIVS_MC_DEBUG_MEMORY ;
 int VIVS_MMUv2_AHB_CONTROL ;
 int VIVS_MMUv2_AHB_CONTROL_NONSEC_ACCESS ;
 int etnaviv_gpu_enable_mlcg (struct etnaviv_gpu*) ;
 int etnaviv_gpu_setup_pulse_eater (struct etnaviv_gpu*) ;
 scalar_t__ etnaviv_is_model_rev (struct etnaviv_gpu*,int ,int) ;
 int gpu_read (struct etnaviv_gpu*,int ) ;
 int gpu_write (struct etnaviv_gpu*,int ,unsigned int) ;

__attribute__((used)) static void etnaviv_gpu_hw_init(struct etnaviv_gpu *gpu)
{
 if ((etnaviv_is_model_rev(gpu, GC320, 0x5007) ||
      etnaviv_is_model_rev(gpu, GC320, 0x5220)) &&
     gpu_read(gpu, VIVS_HI_CHIP_TIME) != 0x2062400) {
  u32 mc_memory_debug;

  mc_memory_debug = gpu_read(gpu, VIVS_MC_DEBUG_MEMORY) & ~0xff;

  if (gpu->identity.revision == 0x5007)
   mc_memory_debug |= 0x0c;
  else
   mc_memory_debug |= 0x08;

  gpu_write(gpu, VIVS_MC_DEBUG_MEMORY, mc_memory_debug);
 }


 etnaviv_gpu_enable_mlcg(gpu);





 gpu_write(gpu, VIVS_HI_AXI_CONFIG,
    VIVS_HI_AXI_CONFIG_AWCACHE(2) |
    VIVS_HI_AXI_CONFIG_ARCACHE(2));


 if (etnaviv_is_model_rev(gpu, GC2000, 0x5108)) {
  u32 bus_config = gpu_read(gpu, VIVS_MC_BUS_CONFIG);
  bus_config &= ~(VIVS_MC_BUS_CONFIG_FE_BUS_CONFIG__MASK |
    VIVS_MC_BUS_CONFIG_TX_BUS_CONFIG__MASK);
  bus_config |= VIVS_MC_BUS_CONFIG_FE_BUS_CONFIG(1) |
         VIVS_MC_BUS_CONFIG_TX_BUS_CONFIG(0);
  gpu_write(gpu, VIVS_MC_BUS_CONFIG, bus_config);
 }

 if (gpu->sec_mode == ETNA_SEC_KERNEL) {
  u32 val = gpu_read(gpu, VIVS_MMUv2_AHB_CONTROL);
  val |= VIVS_MMUv2_AHB_CONTROL_NONSEC_ACCESS;
  gpu_write(gpu, VIVS_MMUv2_AHB_CONTROL, val);
 }


 etnaviv_gpu_setup_pulse_eater(gpu);

 gpu_write(gpu, VIVS_HI_INTR_ENBL, ~0U);
}
