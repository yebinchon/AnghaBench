
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kfd_vm_fault_info {unsigned int vmid; int status; int page_addr; } ;
struct kfd_dev {int kgd; int dqm; } ;
struct cik_ih_ring_entry {int data; int ring_id; scalar_t__ source_id; } ;
typedef int info ;


 scalar_t__ CIK_INTSRC_CP_BAD_OPCODE ;
 scalar_t__ CIK_INTSRC_CP_END_OF_PIPE ;
 scalar_t__ CIK_INTSRC_GFX_MEM_PROT_FAULT ;
 scalar_t__ CIK_INTSRC_GFX_PAGE_INV_FAULT ;
 scalar_t__ CIK_INTSRC_SDMA_TRAP ;
 scalar_t__ CIK_INTSRC_SQ_INTERRUPT_MSG ;
 int amdgpu_amdkfd_gpuvm_get_vm_fault_info (int ,struct kfd_vm_fault_info*) ;
 int kfd_process_vm_fault (int ,unsigned int) ;
 int kfd_signal_event_interrupt (unsigned int,int,int) ;
 int kfd_signal_hw_exception_event (unsigned int) ;
 int kfd_signal_vm_fault_event (struct kfd_dev*,unsigned int,struct kfd_vm_fault_info*) ;
 int memset (struct kfd_vm_fault_info*,int ,int) ;

__attribute__((used)) static void cik_event_interrupt_wq(struct kfd_dev *dev,
     const uint32_t *ih_ring_entry)
{
 const struct cik_ih_ring_entry *ihre =
   (const struct cik_ih_ring_entry *)ih_ring_entry;
 uint32_t context_id = ihre->data & 0xfffffff;
 unsigned int vmid = (ihre->ring_id & 0x0000ff00) >> 8;
 unsigned int pasid = (ihre->ring_id & 0xffff0000) >> 16;

 if (pasid == 0)
  return;

 if (ihre->source_id == CIK_INTSRC_CP_END_OF_PIPE)
  kfd_signal_event_interrupt(pasid, context_id, 28);
 else if (ihre->source_id == CIK_INTSRC_SDMA_TRAP)
  kfd_signal_event_interrupt(pasid, context_id, 28);
 else if (ihre->source_id == CIK_INTSRC_SQ_INTERRUPT_MSG)
  kfd_signal_event_interrupt(pasid, context_id & 0xff, 8);
 else if (ihre->source_id == CIK_INTSRC_CP_BAD_OPCODE)
  kfd_signal_hw_exception_event(pasid);
 else if (ihre->source_id == CIK_INTSRC_GFX_PAGE_INV_FAULT ||
  ihre->source_id == CIK_INTSRC_GFX_MEM_PROT_FAULT) {
  struct kfd_vm_fault_info info;

  kfd_process_vm_fault(dev->dqm, pasid);

  memset(&info, 0, sizeof(info));
  amdgpu_amdkfd_gpuvm_get_vm_fault_info(dev->kgd, &info);
  if (!info.page_addr && !info.status)
   return;

  if (info.vmid == vmid)
   kfd_signal_vm_fault_event(dev, pasid, &info);
  else
   kfd_signal_vm_fault_event(dev, pasid, ((void*)0));
 }
}
