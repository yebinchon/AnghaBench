
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_master {int chan_map; int nr_free; } ;
struct stm_device {int dummy; } ;


 int ENOSPC ;
 int find_free_channels (int ,unsigned int,unsigned int,unsigned int) ;
 struct stp_master* stm_master (struct stm_device*,unsigned int) ;
 int stp_master_alloc (struct stm_device*,unsigned int) ;

__attribute__((used)) static int
stm_find_master_chan(struct stm_device *stm, unsigned int width,
       unsigned int *mstart, unsigned int mend,
       unsigned int *cstart, unsigned int cend)
{
 struct stp_master *master;
 unsigned int midx;
 int pos, err;

 for (midx = *mstart; midx <= mend; midx++) {
  if (!stm_master(stm, midx)) {
   err = stp_master_alloc(stm, midx);
   if (err)
    return err;
  }

  master = stm_master(stm, midx);

  if (!master->nr_free)
   continue;

  pos = find_free_channels(master->chan_map, *cstart, cend,
      width);
  if (pos < 0)
   continue;

  *mstart = midx;
  *cstart = pos;
  return 0;
 }

 return -ENOSPC;
}
