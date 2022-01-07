
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int WRITE_ONCE (int ,int ) ;

__attribute__((used)) static inline void vmw_mmio_write(u32 value, u32 *addr)
{
 WRITE_ONCE(*addr, value);
}
