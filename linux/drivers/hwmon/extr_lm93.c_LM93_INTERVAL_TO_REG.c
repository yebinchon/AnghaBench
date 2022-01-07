
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 long* lm93_interval_map ;

__attribute__((used)) static u8 LM93_INTERVAL_TO_REG(long interval)
{
 int i;
 for (i = 0; i < 9; i++)
  if (interval <= lm93_interval_map[i])
   break;


 return (u8)i;
}
