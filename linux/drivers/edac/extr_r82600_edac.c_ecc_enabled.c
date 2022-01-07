
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int) ;

__attribute__((used)) static inline int ecc_enabled(u8 dramcr)
{
 return dramcr & BIT(5);
}
