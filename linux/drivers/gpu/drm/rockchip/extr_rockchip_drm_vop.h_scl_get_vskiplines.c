
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MIN_SCL_FT_AFTER_VSKIP ;
 int SCL_MAX_VSKIPLINES ;

__attribute__((used)) static inline int scl_get_vskiplines(uint32_t srch, uint32_t dsth)
{
 uint32_t vskiplines;

 for (vskiplines = SCL_MAX_VSKIPLINES; vskiplines > 1; vskiplines /= 2)
  if (srch >= vskiplines * dsth * MIN_SCL_FT_AFTER_VSKIP)
   break;

 return vskiplines;
}
