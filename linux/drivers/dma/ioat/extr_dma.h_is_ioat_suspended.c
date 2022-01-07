
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long IOAT_CHANSTS_STATUS ;
 unsigned long IOAT_CHANSTS_SUSPENDED ;

__attribute__((used)) static inline bool is_ioat_suspended(unsigned long status)
{
 return ((status & IOAT_CHANSTS_STATUS) == IOAT_CHANSTS_SUSPENDED);
}
