
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uverbs_api {int driver_id; int radix; } ;
struct TYPE_2__ {int driver_id; } ;
struct ib_device {int dev; int driver_def; TYPE_1__ ops; } ;


 int ENOMEM ;
 struct uverbs_api* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_RADIX_TREE (int *,int ) ;
 int dev_err (int *,char*,int) ;
 struct uverbs_api* kzalloc (int,int ) ;
 int uapi_finalize (struct uverbs_api*) ;
 int uapi_finalize_disable (struct uverbs_api*) ;
 int uapi_merge_def (struct uverbs_api*,struct ib_device*,int ,int) ;
 int uverbs_core_api ;
 int uverbs_destroy_api (struct uverbs_api*) ;

struct uverbs_api *uverbs_alloc_api(struct ib_device *ibdev)
{
 struct uverbs_api *uapi;
 int rc;

 uapi = kzalloc(sizeof(*uapi), GFP_KERNEL);
 if (!uapi)
  return ERR_PTR(-ENOMEM);

 INIT_RADIX_TREE(&uapi->radix, GFP_KERNEL);
 uapi->driver_id = ibdev->ops.driver_id;

 rc = uapi_merge_def(uapi, ibdev, uverbs_core_api, 0);
 if (rc)
  goto err;
 rc = uapi_merge_def(uapi, ibdev, ibdev->driver_def, 1);
 if (rc)
  goto err;

 uapi_finalize_disable(uapi);
 rc = uapi_finalize(uapi);
 if (rc)
  goto err;

 return uapi;
err:
 if (rc != -ENOMEM)
  dev_err(&ibdev->dev,
   "Setup of uverbs_api failed, kernel parsing tree description is not valid (%d)??\n",
   rc);

 uverbs_destroy_api(uapi);
 return ERR_PTR(rc);
}
