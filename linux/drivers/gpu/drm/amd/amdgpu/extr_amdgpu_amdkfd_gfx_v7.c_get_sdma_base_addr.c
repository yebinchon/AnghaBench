
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cik_sdma_rlc_registers {int sdma_engine_id; int sdma_queue_id; } ;


 int KFD_CIK_SDMA_QUEUE_OFFSET ;
 int SDMA1_REGISTER_OFFSET ;
 int pr_debug (char*,int) ;

__attribute__((used)) static inline uint32_t get_sdma_base_addr(struct cik_sdma_rlc_registers *m)
{
 uint32_t retval;

 retval = m->sdma_engine_id * SDMA1_REGISTER_OFFSET +
   m->sdma_queue_id * KFD_CIK_SDMA_QUEUE_OFFSET;

 pr_debug("sdma base address: 0x%x\n", retval);

 return retval;
}
