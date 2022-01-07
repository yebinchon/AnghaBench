
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm_regs {int eax; int ebx; } ;
typedef int ktime_t ;


 int EBUSY ;
 int EINVAL ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;
 int pr_debug (char*,int,int,int,unsigned long) ;
 scalar_t__ smp_processor_id () ;

__attribute__((used)) static int i8k_smm_func(void *par)
{
 int rc;
 struct smm_regs *regs = par;
 int eax = regs->eax;
 if (smp_processor_id() != 0)
  return -EBUSY;
 asm volatile("pushl %%eax\n\t"
     "movl 0(%%eax),%%edx\n\t"
     "push %%edx\n\t"
     "movl 4(%%eax),%%ebx\n\t"
     "movl 8(%%eax),%%ecx\n\t"
     "movl 12(%%eax),%%edx\n\t"
     "movl 16(%%eax),%%esi\n\t"
     "movl 20(%%eax),%%edi\n\t"
     "popl %%eax\n\t"
     "out %%al,$0xb2\n\t"
     "out %%al,$0x84\n\t"
     "xchgl %%eax,(%%esp)\n\t"
     "movl %%ebx,4(%%eax)\n\t"
     "movl %%ecx,8(%%eax)\n\t"
     "movl %%edx,12(%%eax)\n\t"
     "movl %%esi,16(%%eax)\n\t"
     "movl %%edi,20(%%eax)\n\t"
     "popl %%edx\n\t"
     "movl %%edx,0(%%eax)\n\t"
     "lahf\n\t"
     "shrl $8,%%eax\n\t"
     "andl $1,%%eax\n"
     : "=a"(rc)
     : "a"(regs)
     : "%ebx", "%ecx", "%edx", "%esi", "%edi", "memory");

 if (rc != 0 || (regs->eax & 0xffff) == 0xffff || regs->eax == eax)
  rc = -EINVAL;
 return rc;
}
