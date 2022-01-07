
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cik_sdma_rlc_registers {int dummy; } ;



__attribute__((used)) static inline struct cik_sdma_rlc_registers *get_sdma_mqd(void *mqd)
{
 return (struct cik_sdma_rlc_registers *)mqd;
}
