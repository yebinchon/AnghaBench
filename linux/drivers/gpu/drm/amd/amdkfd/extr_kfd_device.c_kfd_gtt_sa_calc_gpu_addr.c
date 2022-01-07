
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static inline uint64_t kfd_gtt_sa_calc_gpu_addr(uint64_t start_addr,
      unsigned int bit_num,
      unsigned int chunk_size)
{
 return start_addr + bit_num * chunk_size;
}
