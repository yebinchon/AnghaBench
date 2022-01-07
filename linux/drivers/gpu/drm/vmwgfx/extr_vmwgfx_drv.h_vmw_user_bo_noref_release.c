
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ttm_base_object_noref_release () ;

__attribute__((used)) static inline void vmw_user_bo_noref_release(void)
{
 ttm_base_object_noref_release();
}
