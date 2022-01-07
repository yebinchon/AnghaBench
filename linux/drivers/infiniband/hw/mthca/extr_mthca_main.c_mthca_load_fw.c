
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fw_icm; int fw_pages; } ;
struct TYPE_3__ {TYPE_2__ arbel; } ;
struct mthca_dev {TYPE_1__ fw; } ;


 int ENOMEM ;
 int GFP_HIGHUSER ;
 int __GFP_NOWARN ;
 int mthca_MAP_FA (struct mthca_dev*,int ) ;
 int mthca_RUN_FW (struct mthca_dev*) ;
 int mthca_UNMAP_FA (struct mthca_dev*) ;
 int mthca_alloc_icm (struct mthca_dev*,int ,int,int ) ;
 int mthca_err (struct mthca_dev*,char*,...) ;
 int mthca_free_icm (struct mthca_dev*,int ,int ) ;

__attribute__((used)) static int mthca_load_fw(struct mthca_dev *mdev)
{
 int err;



 mdev->fw.arbel.fw_icm =
  mthca_alloc_icm(mdev, mdev->fw.arbel.fw_pages,
    GFP_HIGHUSER | __GFP_NOWARN, 0);
 if (!mdev->fw.arbel.fw_icm) {
  mthca_err(mdev, "Couldn't allocate FW area, aborting.\n");
  return -ENOMEM;
 }

 err = mthca_MAP_FA(mdev, mdev->fw.arbel.fw_icm);
 if (err) {
  mthca_err(mdev, "MAP_FA command returned %d, aborting.\n", err);
  goto err_free;
 }
 err = mthca_RUN_FW(mdev);
 if (err) {
  mthca_err(mdev, "RUN_FW command returned %d, aborting.\n", err);
  goto err_unmap_fa;
 }

 return 0;

err_unmap_fa:
 mthca_UNMAP_FA(mdev);

err_free:
 mthca_free_icm(mdev, mdev->fw.arbel.fw_icm, 0);
 return err;
}
