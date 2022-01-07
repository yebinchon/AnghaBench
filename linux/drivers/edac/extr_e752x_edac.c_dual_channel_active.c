
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline int dual_channel_active(u16 ddrcsr)
{
 return (((ddrcsr >> 12) & 3) == 3);
}
