
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_CR0_CD ;
 int read_cr0 () ;
 int write_cr0 (int) ;

__attribute__((used)) static inline void enable_caches(void *dummy)
{
 write_cr0(read_cr0() & ~X86_CR0_CD);
}
