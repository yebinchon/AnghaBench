
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int dummy; } ;
struct ttm_mem_global {int dummy; } ;


 struct ttm_mem_global ttm_mem_glob ;

__attribute__((used)) static inline struct ttm_mem_global *vmw_mem_glob(struct vmw_private *dev_priv)
{
 return &ttm_mem_glob;
}
