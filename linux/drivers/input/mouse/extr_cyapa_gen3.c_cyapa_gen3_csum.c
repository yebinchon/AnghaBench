
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;



__attribute__((used)) static u16 cyapa_gen3_csum(const u8 *buf, size_t count)
{
 int i;
 u16 csum = 0;

 for (i = 0; i < count; i++)
  csum += buf[i];

 return csum;
}
