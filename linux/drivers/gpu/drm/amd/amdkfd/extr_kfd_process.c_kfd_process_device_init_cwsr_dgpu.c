
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qcm_process_device {void* cwsr_kaddr; scalar_t__ tma_addr; scalar_t__ tba_addr; scalar_t__ cwsr_base; } ;
struct kfd_process_device {struct qcm_process_device qpd; struct kfd_dev* dev; } ;
struct kfd_dev {int cwsr_isa_size; int cwsr_isa; int cwsr_enabled; } ;


 int ALLOC_MEM_FLAGS_EXECUTABLE ;
 int ALLOC_MEM_FLAGS_GTT ;
 int ALLOC_MEM_FLAGS_NO_SUBSTITUTE ;
 int KFD_CWSR_TBA_TMA_SIZE ;
 scalar_t__ KFD_CWSR_TMA_OFFSET ;
 int kfd_process_alloc_gpuvm (struct kfd_process_device*,scalar_t__,int ,int,void**) ;
 int memcpy (void*,int ,int ) ;
 int pr_debug (char*,scalar_t__,scalar_t__,void*) ;

__attribute__((used)) static int kfd_process_device_init_cwsr_dgpu(struct kfd_process_device *pdd)
{
 struct kfd_dev *dev = pdd->dev;
 struct qcm_process_device *qpd = &pdd->qpd;
 uint32_t flags = ALLOC_MEM_FLAGS_GTT |
  ALLOC_MEM_FLAGS_NO_SUBSTITUTE | ALLOC_MEM_FLAGS_EXECUTABLE;
 void *kaddr;
 int ret;

 if (!dev->cwsr_enabled || qpd->cwsr_kaddr || !qpd->cwsr_base)
  return 0;


 ret = kfd_process_alloc_gpuvm(pdd, qpd->cwsr_base,
          KFD_CWSR_TBA_TMA_SIZE, flags, &kaddr);
 if (ret)
  return ret;

 qpd->cwsr_kaddr = kaddr;
 qpd->tba_addr = qpd->cwsr_base;

 memcpy(qpd->cwsr_kaddr, dev->cwsr_isa, dev->cwsr_isa_size);

 qpd->tma_addr = qpd->tba_addr + KFD_CWSR_TMA_OFFSET;
 pr_debug("set tba :0x%llx, tma:0x%llx, cwsr_kaddr:%p for pqm.\n",
   qpd->tba_addr, qpd->tma_addr, qpd->cwsr_kaddr);

 return 0;
}
