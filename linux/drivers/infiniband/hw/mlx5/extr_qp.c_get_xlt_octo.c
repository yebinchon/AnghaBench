
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ALIGN (int,int ) ;
 int MLX5_IB_UMR_OCTOWORD ;
 int MLX5_IB_UMR_XLT_ALIGNMENT ;

__attribute__((used)) static u64 get_xlt_octo(u64 bytes)
{
 return ALIGN(bytes, MLX5_IB_UMR_XLT_ALIGNMENT) /
        MLX5_IB_UMR_OCTOWORD;
}
