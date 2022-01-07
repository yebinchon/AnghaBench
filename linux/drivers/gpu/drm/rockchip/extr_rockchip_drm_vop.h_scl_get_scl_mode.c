
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum scale_mode { ____Placeholder_scale_mode } scale_mode ;


 int SCALE_DOWN ;
 int SCALE_NONE ;
 int SCALE_UP ;

__attribute__((used)) static inline enum scale_mode scl_get_scl_mode(int src, int dst)
{
 if (src < dst)
  return SCALE_UP;
 else if (src > dst)
  return SCALE_DOWN;

 return SCALE_NONE;
}
