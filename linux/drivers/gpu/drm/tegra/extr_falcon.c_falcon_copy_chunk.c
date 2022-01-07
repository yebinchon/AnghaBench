
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct falcon {int dummy; } ;
typedef unsigned long phys_addr_t ;
typedef enum falcon_memory { ____Placeholder_falcon_memory } falcon_memory ;


 int FALCON_DMATRFCMD ;
 unsigned long FALCON_DMATRFCMD_IMEM ;
 unsigned long FALCON_DMATRFCMD_SIZE_256B ;
 int FALCON_DMATRFFBOFFS ;
 int FALCON_DMATRFMOFFS ;
 int FALCON_MEMORY_IMEM ;
 int falcon_dma_wait_idle (struct falcon*) ;
 int falcon_writel (struct falcon*,unsigned long,int ) ;

__attribute__((used)) static int falcon_copy_chunk(struct falcon *falcon,
        phys_addr_t base,
        unsigned long offset,
        enum falcon_memory target)
{
 u32 cmd = FALCON_DMATRFCMD_SIZE_256B;

 if (target == FALCON_MEMORY_IMEM)
  cmd |= FALCON_DMATRFCMD_IMEM;

 falcon_writel(falcon, offset, FALCON_DMATRFMOFFS);
 falcon_writel(falcon, base, FALCON_DMATRFFBOFFS);
 falcon_writel(falcon, cmd, FALCON_DMATRFCMD);

 return falcon_dma_wait_idle(falcon);
}
