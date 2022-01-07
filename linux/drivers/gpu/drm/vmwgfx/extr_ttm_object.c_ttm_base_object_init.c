
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_object_file {struct ttm_object_device* tdev; } ;
struct ttm_object_device {int object_lock; int idr; } ;
struct ttm_base_object {int shareable; void (* refcount_release ) (struct ttm_base_object**) ;void (* ref_obj_release ) (struct ttm_base_object*,int) ;int object_type; int handle; int refcount; int tfile; } ;
typedef enum ttm_object_type { ____Placeholder_ttm_object_type } ttm_object_type ;


 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int TTM_REF_USAGE ;
 int idr_alloc (int *,struct ttm_base_object*,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int idr_remove (int *,int) ;
 int kref_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_base_object_unref (struct ttm_base_object**) ;
 int ttm_object_file_ref (struct ttm_object_file*) ;
 int ttm_ref_object_add (struct ttm_object_file*,struct ttm_base_object*,int ,int *,int) ;
 scalar_t__ unlikely (int) ;

int ttm_base_object_init(struct ttm_object_file *tfile,
    struct ttm_base_object *base,
    bool shareable,
    enum ttm_object_type object_type,
    void (*refcount_release) (struct ttm_base_object **),
    void (*ref_obj_release) (struct ttm_base_object *,
        enum ttm_ref_type ref_type))
{
 struct ttm_object_device *tdev = tfile->tdev;
 int ret;

 base->shareable = shareable;
 base->tfile = ttm_object_file_ref(tfile);
 base->refcount_release = refcount_release;
 base->ref_obj_release = ref_obj_release;
 base->object_type = object_type;
 kref_init(&base->refcount);
 idr_preload(GFP_KERNEL);
 spin_lock(&tdev->object_lock);
 ret = idr_alloc(&tdev->idr, base, 1, 0, GFP_NOWAIT);
 spin_unlock(&tdev->object_lock);
 idr_preload_end();
 if (ret < 0)
  return ret;

 base->handle = ret;
 ret = ttm_ref_object_add(tfile, base, TTM_REF_USAGE, ((void*)0), 0);
 if (unlikely(ret != 0))
  goto out_err1;

 ttm_base_object_unref(&base);

 return 0;
out_err1:
 spin_lock(&tdev->object_lock);
 idr_remove(&tdev->idr, base->handle);
 spin_unlock(&tdev->object_lock);
 return ret;
}
