
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;



__attribute__((used)) static inline s16 LM77_TEMP_TO_REG(int temp)
{
 return (temp / 500) * 8;
}
