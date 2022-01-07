
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_kms_sou_bo_blit {int dummy; } ;
struct vmw_kms_dirty {int num_hits; int dev_priv; } ;


 int vmw_fifo_commit (int ,int) ;

__attribute__((used)) static void vmw_sou_bo_fifo_commit(struct vmw_kms_dirty *dirty)
{
 if (!dirty->num_hits) {
  vmw_fifo_commit(dirty->dev_priv, 0);
  return;
 }

 vmw_fifo_commit(dirty->dev_priv,
   sizeof(struct vmw_kms_sou_bo_blit) *
   dirty->num_hits);
}
