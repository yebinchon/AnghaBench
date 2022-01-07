
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {int dummy; } ;
struct kernel_queue {int dummy; } ;
typedef enum kfd_queue_type { ____Placeholder_kfd_queue_type } kfd_queue_type ;



__attribute__((used)) static bool initialize_cik(struct kernel_queue *kq, struct kfd_dev *dev,
   enum kfd_queue_type type, unsigned int queue_size)
{
 return 1;
}
