
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inta_pin; } ;
struct mthca_dev {int board_id; int rev_id; TYPE_1__ eq_table; } ;
struct mthca_adapter {int board_id; int revision_id; int inta_pin; } ;


 int memcpy (int ,int ,int) ;
 int mthca_QUERY_ADAPTER (struct mthca_dev*,struct mthca_adapter*) ;
 int mthca_close_hca (struct mthca_dev*) ;
 int mthca_err (struct mthca_dev*,char*,int) ;
 int mthca_init_arbel (struct mthca_dev*) ;
 int mthca_init_tavor (struct mthca_dev*) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;

__attribute__((used)) static int mthca_init_hca(struct mthca_dev *mdev)
{
 int err;
 struct mthca_adapter adapter;

 if (mthca_is_memfree(mdev))
  err = mthca_init_arbel(mdev);
 else
  err = mthca_init_tavor(mdev);

 if (err)
  return err;

 err = mthca_QUERY_ADAPTER(mdev, &adapter);
 if (err) {
  mthca_err(mdev, "QUERY_ADAPTER command returned %d, aborting.\n", err);
  goto err_close;
 }

 mdev->eq_table.inta_pin = adapter.inta_pin;
 if (!mthca_is_memfree(mdev))
  mdev->rev_id = adapter.revision_id;
 memcpy(mdev->board_id, adapter.board_id, sizeof mdev->board_id);

 return 0;

err_close:
 mthca_close_hca(mdev);
 return err;
}
