
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MLX5_MAX_DYN_BFREGS ;
 int MLX5_MIN_DYN_BFREGS ;
 int PAGE_SIZE ;

__attribute__((used)) static u16 calc_dynamic_bfregs(int uars_per_sys_page)
{

 if (uars_per_sys_page == 1 && PAGE_SIZE > 4096)
  return MLX5_MIN_DYN_BFREGS;

 return MLX5_MAX_DYN_BFREGS;
}
