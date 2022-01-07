
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static inline uint16_t scl_cal_scale2(int src, int dst)
{
 return ((src - 1) << 12) / (dst - 1);
}
