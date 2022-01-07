
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;



__attribute__((used)) static int stts751_to_deg(s16 hw_val)
{
 return hw_val * 125 / 32;
}
