
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum plane_id { ____Placeholder_plane_id } plane_id ;


 int PLANE_SPRITE4 ;
 int PLANE_SPRITE5 ;

__attribute__((used)) static inline bool icl_is_nv12_y_plane(enum plane_id id)
{

 if (id == PLANE_SPRITE4 || id == PLANE_SPRITE5)
  return 1;

 return 0;
}
