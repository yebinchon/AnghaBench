
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t *kfd_gtt_sa_calc_cpu_addr(void *start_addr,
      unsigned int bit_num,
      unsigned int chunk_size)
{
 return (uint32_t *) ((uint64_t) start_addr + bit_num * chunk_size);
}
