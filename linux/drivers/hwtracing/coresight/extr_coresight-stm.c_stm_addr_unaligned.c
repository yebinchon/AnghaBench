
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline bool stm_addr_unaligned(const void *addr, u8 write_bytes)
{
 return ((unsigned long)addr & (write_bytes - 1));
}
