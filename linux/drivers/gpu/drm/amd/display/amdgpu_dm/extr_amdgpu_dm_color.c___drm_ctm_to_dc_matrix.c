
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed31_32 {unsigned long long value; } ;
struct drm_color_ctm {unsigned long long* matrix; } ;
typedef unsigned long long int64_t ;


 struct fixed31_32 dc_fixpt_zero ;

__attribute__((used)) static void __drm_ctm_to_dc_matrix(const struct drm_color_ctm *ctm,
       struct fixed31_32 *matrix)
{
 int64_t val;
 int i;
 for (i = 0; i < 12; i++) {

  if (i % 4 == 3) {
   matrix[i] = dc_fixpt_zero;
   continue;
  }


  val = ctm->matrix[i - (i / 4)];

  if (val & (1ULL << 63))
   val = -(val & ~(1ULL << 63));

  matrix[i].value = val;
 }
}
