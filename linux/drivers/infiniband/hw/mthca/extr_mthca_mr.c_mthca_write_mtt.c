
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mthca_mtt {int dummy; } ;
struct TYPE_2__ {int mtt_buddy; int * fmr_mtt_buddy; } ;
struct mthca_dev {int mthca_flags; TYPE_1__ mr_table; } ;


 int MTHCA_FLAG_FMR ;
 int __mthca_write_mtt (struct mthca_dev*,struct mthca_mtt*,int,int *,int) ;
 int min (int,int) ;
 int mthca_arbel_write_mtt_seg (struct mthca_dev*,struct mthca_mtt*,int,int *,int) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 int mthca_tavor_write_mtt_seg (struct mthca_dev*,struct mthca_mtt*,int,int *,int) ;
 int mthca_write_mtt_size (struct mthca_dev*) ;

int mthca_write_mtt(struct mthca_dev *dev, struct mthca_mtt *mtt,
      int start_index, u64 *buffer_list, int list_len)
{
 int size = mthca_write_mtt_size(dev);
 int chunk;

 if (dev->mr_table.fmr_mtt_buddy != &dev->mr_table.mtt_buddy ||
     !(dev->mthca_flags & MTHCA_FLAG_FMR))
  return __mthca_write_mtt(dev, mtt, start_index, buffer_list, list_len);

 while (list_len > 0) {
  chunk = min(size, list_len);
  if (mthca_is_memfree(dev))
   mthca_arbel_write_mtt_seg(dev, mtt, start_index,
        buffer_list, chunk);
  else
   mthca_tavor_write_mtt_seg(dev, mtt, start_index,
        buffer_list, chunk);

  list_len -= chunk;
  start_index += chunk;
  buffer_list += chunk;
 }

 return 0;
}
