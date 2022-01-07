
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_drvdata {struct buff_mgr_handle* buff_mgr_handle; } ;
struct buff_mgr_handle {int mlli_buffs_pool; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LLI_ENTRY_BYTE_SIZE ;
 int MAX_NUM_OF_TOTAL_MLLI_ENTRIES ;
 int MLLI_TABLE_MIN_ALIGNMENT ;
 int cc_buffer_mgr_fini (struct cc_drvdata*) ;
 int dma_pool_create (char*,struct device*,int,int ,int ) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 struct buff_mgr_handle* kmalloc (int,int ) ;

int cc_buffer_mgr_init(struct cc_drvdata *drvdata)
{
 struct buff_mgr_handle *buff_mgr_handle;
 struct device *dev = drvdata_to_dev(drvdata);

 buff_mgr_handle = kmalloc(sizeof(*buff_mgr_handle), GFP_KERNEL);
 if (!buff_mgr_handle)
  return -ENOMEM;

 drvdata->buff_mgr_handle = buff_mgr_handle;

 buff_mgr_handle->mlli_buffs_pool =
  dma_pool_create("dx_single_mlli_tables", dev,
    MAX_NUM_OF_TOTAL_MLLI_ENTRIES *
    LLI_ENTRY_BYTE_SIZE,
    MLLI_TABLE_MIN_ALIGNMENT, 0);

 if (!buff_mgr_handle->mlli_buffs_pool)
  goto error;

 return 0;

error:
 cc_buffer_mgr_fini(drvdata);
 return -ENOMEM;
}
