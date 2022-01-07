
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_tt {int * func; } ;
struct ttm_buffer_object {int bdev; } ;
struct qxl_ttm_tt {struct ttm_tt ttm; struct qxl_device* qdev; } ;
struct qxl_device {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct qxl_ttm_tt*) ;
 struct qxl_ttm_tt* kzalloc (int,int ) ;
 int qxl_backend_func ;
 struct qxl_device* qxl_get_qdev (int ) ;
 scalar_t__ ttm_tt_init (struct ttm_tt*,struct ttm_buffer_object*,int ) ;

__attribute__((used)) static struct ttm_tt *qxl_ttm_tt_create(struct ttm_buffer_object *bo,
     uint32_t page_flags)
{
 struct qxl_device *qdev;
 struct qxl_ttm_tt *gtt;

 qdev = qxl_get_qdev(bo->bdev);
 gtt = kzalloc(sizeof(struct qxl_ttm_tt), GFP_KERNEL);
 if (gtt == ((void*)0))
  return ((void*)0);
 gtt->ttm.func = &qxl_backend_func;
 gtt->qdev = qdev;
 if (ttm_tt_init(&gtt->ttm, bo, page_flags)) {
  kfree(gtt);
  return ((void*)0);
 }
 return &gtt->ttm;
}
