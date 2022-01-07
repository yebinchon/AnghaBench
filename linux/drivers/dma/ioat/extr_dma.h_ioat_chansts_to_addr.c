
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int IOAT_CHANSTS_COMPLETED_DESCRIPTOR_ADDR ;

__attribute__((used)) static inline u64 ioat_chansts_to_addr(u64 status)
{
 return status & IOAT_CHANSTS_COMPLETED_DESCRIPTOR_ADDR;
}
