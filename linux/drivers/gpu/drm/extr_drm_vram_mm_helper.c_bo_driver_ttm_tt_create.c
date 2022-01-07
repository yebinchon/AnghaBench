
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_tt {int * func; } ;
struct ttm_buffer_object {int dummy; } ;


 int GFP_KERNEL ;
 int backend_func ;
 int kfree (struct ttm_tt*) ;
 struct ttm_tt* kzalloc (int,int ) ;
 int ttm_tt_init (struct ttm_tt*,struct ttm_buffer_object*,int ) ;

__attribute__((used)) static struct ttm_tt *bo_driver_ttm_tt_create(struct ttm_buffer_object *bo,
           uint32_t page_flags)
{
 struct ttm_tt *tt;
 int ret;

 tt = kzalloc(sizeof(*tt), GFP_KERNEL);
 if (!tt)
  return ((void*)0);

 tt->func = &backend_func;

 ret = ttm_tt_init(tt, bo, page_flags);
 if (ret < 0)
  goto err_ttm_tt_init;

 return tt;

err_ttm_tt_init:
 kfree(tt);
 return ((void*)0);
}
