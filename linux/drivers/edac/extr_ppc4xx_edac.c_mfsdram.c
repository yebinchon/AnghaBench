
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ base; } ;
typedef TYPE_1__ dcr_host_t ;


 scalar_t__ SDRAM_DCR_ADDR_OFFSET ;
 scalar_t__ SDRAM_DCR_DATA_OFFSET ;
 int __mfdcri (scalar_t__,scalar_t__,unsigned int) ;

__attribute__((used)) static inline u32
mfsdram(const dcr_host_t *dcr_host, unsigned int idcr_n)
{
 return __mfdcri(dcr_host->base + SDRAM_DCR_ADDR_OFFSET,
   dcr_host->base + SDRAM_DCR_DATA_OFFSET,
   idcr_n);
}
