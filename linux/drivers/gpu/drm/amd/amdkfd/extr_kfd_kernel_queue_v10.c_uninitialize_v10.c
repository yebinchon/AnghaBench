
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_queue {int eop_mem; int dev; } ;


 int kfd_gtt_sa_free (int ,int ) ;

__attribute__((used)) static void uninitialize_v10(struct kernel_queue *kq)
{
 kfd_gtt_sa_free(kq->dev, kq->eop_mem);
}
