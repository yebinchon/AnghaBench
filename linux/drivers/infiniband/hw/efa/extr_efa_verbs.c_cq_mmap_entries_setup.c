
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efa_ibv_create_cq_resp {scalar_t__ q_mmap_key; int q_mmap_size; } ;
struct efa_dev {int dummy; } ;
struct efa_cq {int size; int cpu_addr; int ucontext; } ;


 int EFA_MMAP_DMA_PAGE ;
 scalar_t__ EFA_MMAP_INVALID ;
 int ENOMEM ;
 scalar_t__ mmap_entry_insert (struct efa_dev*,int ,struct efa_cq*,int ,int ,int ) ;
 int virt_to_phys (int ) ;

__attribute__((used)) static int cq_mmap_entries_setup(struct efa_dev *dev, struct efa_cq *cq,
     struct efa_ibv_create_cq_resp *resp)
{
 resp->q_mmap_size = cq->size;
 resp->q_mmap_key = mmap_entry_insert(dev, cq->ucontext, cq,
          virt_to_phys(cq->cpu_addr),
          cq->size, EFA_MMAP_DMA_PAGE);
 if (resp->q_mmap_key == EFA_MMAP_INVALID)
  return -ENOMEM;

 return 0;
}
