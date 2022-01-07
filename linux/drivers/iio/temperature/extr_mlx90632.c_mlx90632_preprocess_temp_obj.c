
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long s64 ;
typedef int s16 ;


 long long MLX90632_REF_12 ;
 long long MLX90632_REF_3 ;
 long long div64_s64 (long long,long long) ;

__attribute__((used)) static s64 mlx90632_preprocess_temp_obj(s16 object_new_raw, s16 object_old_raw,
     s16 ambient_new_raw,
     s16 ambient_old_raw, s16 Ka)
{
 s64 VR_IR, kKa, tmp;

 kKa = ((s64)Ka * 1000LL) >> 10ULL;
 VR_IR = (s64)ambient_old_raw * 1000000LL +
  kKa * div64_s64(((s64)ambient_new_raw * 1000LL),
   (MLX90632_REF_3));
 tmp = div64_s64(
   div64_s64(((s64)((object_new_raw + object_old_raw) / 2)
       * 1000000000000LL), (MLX90632_REF_12)),
   VR_IR);
 return div64_s64((tmp << 19ULL), 1000LL);
}
