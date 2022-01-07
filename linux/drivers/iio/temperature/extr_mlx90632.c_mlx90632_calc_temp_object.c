
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int s8 ;
typedef long long s64 ;
typedef long long s32 ;
typedef int s16 ;


 long long div64_s64 (long long,long long) ;
 long long mlx90632_calc_temp_object_iteration (long long,long long,long long,long long,long long,long long,int ,int ,int ) ;

__attribute__((used)) static s32 mlx90632_calc_temp_object(s64 object, s64 ambient, s32 Ea, s32 Eb,
         s32 Fa, s32 Fb, s32 Ga, s16 Ha, s16 Hb,
         u16 tmp_emi)
{
 s64 kTA, kTA0, TAdut;
 s64 temp = 25000;
 s8 i;

 kTA = (Ea * 1000LL) >> 16LL;
 kTA0 = (Eb * 1000LL) >> 8LL;
 TAdut = div64_s64(((ambient - kTA0) * 1000000LL), kTA) + 25 * 1000000LL;


 for (i = 0; i < 5; ++i) {
  temp = mlx90632_calc_temp_object_iteration(temp, object, TAdut,
          Fa, Fb, Ga, Ha, Hb,
          tmp_emi);
 }
 return temp;
}
