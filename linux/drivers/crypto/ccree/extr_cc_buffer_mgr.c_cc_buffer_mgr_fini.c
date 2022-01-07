
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_drvdata {struct buff_mgr_handle* buff_mgr_handle; } ;
struct buff_mgr_handle {int mlli_buffs_pool; } ;


 int dma_pool_destroy (int ) ;
 int kfree (struct buff_mgr_handle*) ;

int cc_buffer_mgr_fini(struct cc_drvdata *drvdata)
{
 struct buff_mgr_handle *buff_mgr_handle = drvdata->buff_mgr_handle;

 if (buff_mgr_handle) {
  dma_pool_destroy(buff_mgr_handle->mlli_buffs_pool);
  kfree(drvdata->buff_mgr_handle);
  drvdata->buff_mgr_handle = ((void*)0);
 }
 return 0;
}
