
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long s64 ;
typedef long long s32 ;
typedef int s16 ;


 long long div64_s64 (long long,long long) ;
 long long mlx90632_preprocess_temp_amb (int ,int ,int ) ;

__attribute__((used)) static s32 mlx90632_calc_temp_ambient(s16 ambient_new_raw, s16 ambient_old_raw,
          s32 P_T, s32 P_R, s32 P_G, s32 P_O,
          s16 Gb)
{
 s64 Asub, Bsub, Ablock, Bblock, Cblock, AMB, sum;

 AMB = mlx90632_preprocess_temp_amb(ambient_new_raw, ambient_old_raw,
        Gb);
 Asub = ((s64)P_T * 10000000000LL) >> 44ULL;
 Bsub = AMB - (((s64)P_R * 1000LL) >> 8ULL);
 Ablock = Asub * (Bsub * Bsub);
 Bblock = (div64_s64(Bsub * 10000000LL, P_G)) << 20ULL;
 Cblock = ((s64)P_O * 10000000000LL) >> 8ULL;

 sum = div64_s64(Ablock, 1000000LL) + Bblock + Cblock;

 return div64_s64(sum, 10000000LL);
}
