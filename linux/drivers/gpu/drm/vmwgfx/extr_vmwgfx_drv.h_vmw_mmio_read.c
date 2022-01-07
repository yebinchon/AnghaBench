
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int READ_ONCE (int ) ;

__attribute__((used)) static inline u32 vmw_mmio_read(u32 *addr)
{
 return READ_ONCE(*addr);
}
