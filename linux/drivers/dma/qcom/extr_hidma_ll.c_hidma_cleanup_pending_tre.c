
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hidma_lldev {int pending_tre_count; } ;


 scalar_t__ atomic_read (int *) ;
 scalar_t__ hidma_post_completed (struct hidma_lldev*,int ,int ) ;

void hidma_cleanup_pending_tre(struct hidma_lldev *lldev, u8 err_info,
          u8 err_code)
{
 while (atomic_read(&lldev->pending_tre_count)) {
  if (hidma_post_completed(lldev, err_info, err_code))
   break;
 }
}
