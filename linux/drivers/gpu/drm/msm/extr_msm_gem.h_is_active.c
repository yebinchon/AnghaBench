
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_object {int * gpu; } ;



__attribute__((used)) static inline bool is_active(struct msm_gem_object *msm_obj)
{
 return msm_obj->gpu != ((void*)0);
}
