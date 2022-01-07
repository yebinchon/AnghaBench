
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qcm_process_device {void* ib_kaddr; int ib_base; } ;
struct kfd_process_device {struct qcm_process_device qpd; } ;


 int ALLOC_MEM_FLAGS_EXECUTABLE ;
 int ALLOC_MEM_FLAGS_GTT ;
 int ALLOC_MEM_FLAGS_NO_SUBSTITUTE ;
 int ALLOC_MEM_FLAGS_WRITABLE ;
 int PAGE_SIZE ;
 int kfd_process_alloc_gpuvm (struct kfd_process_device*,int ,int ,int,void**) ;

__attribute__((used)) static int kfd_process_device_reserve_ib_mem(struct kfd_process_device *pdd)
{
 struct qcm_process_device *qpd = &pdd->qpd;
 uint32_t flags = ALLOC_MEM_FLAGS_GTT |
    ALLOC_MEM_FLAGS_NO_SUBSTITUTE |
    ALLOC_MEM_FLAGS_WRITABLE |
    ALLOC_MEM_FLAGS_EXECUTABLE;
 void *kaddr;
 int ret;

 if (qpd->ib_kaddr || !qpd->ib_base)
  return 0;


 ret = kfd_process_alloc_gpuvm(pdd, qpd->ib_base, PAGE_SIZE, flags,
          &kaddr);
 if (ret)
  return ret;

 qpd->ib_kaddr = kaddr;

 return 0;
}
