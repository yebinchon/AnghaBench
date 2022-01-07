
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DCRN_MQ0_CF2H ;
 int dcr_write (int ,int ,int ) ;
 int ppc440spe_mq_dcr_host ;

__attribute__((used)) static inline void ppc440spe_desc_set_rxor_block_size(u32 byte_count)
{




 dcr_write(ppc440spe_mq_dcr_host, DCRN_MQ0_CF2H, byte_count);
}
