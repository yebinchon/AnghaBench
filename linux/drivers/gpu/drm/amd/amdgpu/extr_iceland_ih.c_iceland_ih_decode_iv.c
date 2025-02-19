
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct amdgpu_iv_entry {int src_id; int* src_data; int ring_id; int vmid; int pasid; int client_id; } ;
struct amdgpu_ih_ring {int rptr; int * ring; } ;
struct amdgpu_device {int dummy; } ;


 int AMDGPU_IRQ_CLIENTID_LEGACY ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void iceland_ih_decode_iv(struct amdgpu_device *adev,
     struct amdgpu_ih_ring *ih,
     struct amdgpu_iv_entry *entry)
{

 u32 ring_index = ih->rptr >> 2;
 uint32_t dw[4];

 dw[0] = le32_to_cpu(ih->ring[ring_index + 0]);
 dw[1] = le32_to_cpu(ih->ring[ring_index + 1]);
 dw[2] = le32_to_cpu(ih->ring[ring_index + 2]);
 dw[3] = le32_to_cpu(ih->ring[ring_index + 3]);

 entry->client_id = AMDGPU_IRQ_CLIENTID_LEGACY;
 entry->src_id = dw[0] & 0xff;
 entry->src_data[0] = dw[1] & 0xfffffff;
 entry->ring_id = dw[2] & 0xff;
 entry->vmid = (dw[2] >> 8) & 0xff;
 entry->pasid = (dw[2] >> 16) & 0xffff;


 ih->rptr += 16;
}
