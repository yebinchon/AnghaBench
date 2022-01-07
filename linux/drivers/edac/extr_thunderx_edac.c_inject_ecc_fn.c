
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunderx_lmc {unsigned long long parity_test; unsigned int mask0; unsigned int mask2; scalar_t__ regs; int mem; } ;


 scalar_t__ LMC_CHAR_MASK0 ;
 scalar_t__ LMC_CHAR_MASK2 ;
 scalar_t__ LMC_ECC_PARITY_TEST ;
 unsigned int PAGE_SIZE ;
 int TEST_PATTERN ;
 int barrier () ;
 unsigned int cache_line_size () ;
 int memset (void*,int ,unsigned int) ;
 scalar_t__ page_address (int ) ;
 scalar_t__ page_to_phys (int ) ;
 int readq (scalar_t__) ;
 int writeq (unsigned int,scalar_t__) ;

__attribute__((used)) static int inject_ecc_fn(void *arg)
{
 struct thunderx_lmc *lmc = arg;
 uintptr_t addr, phys;
 unsigned int cline_size = cache_line_size();
 const unsigned int lines = PAGE_SIZE / cline_size;
 unsigned int i, cl_idx;

 addr = (uintptr_t)page_address(lmc->mem);
 phys = (uintptr_t)page_to_phys(lmc->mem);

 cl_idx = (phys & 0x7f) >> 4;
 lmc->parity_test &= ~(7ULL << 8);
 lmc->parity_test |= (cl_idx << 8);

 writeq(lmc->mask0, lmc->regs + LMC_CHAR_MASK0);
 writeq(lmc->mask2, lmc->regs + LMC_CHAR_MASK2);
 writeq(lmc->parity_test, lmc->regs + LMC_ECC_PARITY_TEST);

 readq(lmc->regs + LMC_CHAR_MASK0);
 readq(lmc->regs + LMC_CHAR_MASK2);
 readq(lmc->regs + LMC_ECC_PARITY_TEST);

 for (i = 0; i < lines; i++) {
  memset((void *)addr, TEST_PATTERN, cline_size);
  barrier();





  asm volatile("dc civac, %0\n"
        "dsb sy\n"
        : : "r"(addr + i * cline_size));
 }

 for (i = 0; i < lines; i++) {





  __asm__ volatile("sys #0,c11,C1,#2, %0\n"
     : : "r"(phys + i * cline_size));
 }

 for (i = 0; i < lines; i++) {





  __asm__ volatile("sys #0,c11,C1,#1, %0"
     : : "r"(phys + i * cline_size));
 }

 for (i = 0; i < lines; i++) {





  asm volatile("dc ivac, %0\n"
        "dsb sy\n"
        : : "r"(addr + i * cline_size));
 }

 return 0;
}
