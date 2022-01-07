
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgdma_device {int done_list; int pending_list; int active_list; } ;


 int msgdma_free_desc_list (struct msgdma_device*,int *) ;

__attribute__((used)) static void msgdma_free_descriptors(struct msgdma_device *mdev)
{
 msgdma_free_desc_list(mdev, &mdev->active_list);
 msgdma_free_desc_list(mdev, &mdev->pending_list);
 msgdma_free_desc_list(mdev, &mdev->done_list);
}
