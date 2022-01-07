
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static u16
fixedU0_16_FP16(u16 fixed)
{
        int sign = 0, exp = 0, man = 0;
        if (fixed) {
                while (--exp && !(fixed & 0x8000))
                        fixed <<= 1;
                man = ((fixed << 1) & 0xffc0) >> 6;
                exp += 15;
        }
        return (sign << 15) | (exp << 10) | man;
}
