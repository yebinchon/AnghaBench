
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {int* cond_exe_cpu_addr; } ;



__attribute__((used)) static inline void amdgpu_ring_set_preempt_cond_exec(struct amdgpu_ring *ring,
       bool cond_exec)
{
 *ring->cond_exe_cpu_addr = cond_exec;
}
