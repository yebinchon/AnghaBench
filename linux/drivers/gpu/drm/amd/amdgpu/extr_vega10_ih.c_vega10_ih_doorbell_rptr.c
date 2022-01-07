
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct amdgpu_ih_ring {int doorbell_index; scalar_t__ use_doorbell; } ;


 int ENABLE ;
 int IH_DOORBELL_RPTR ;
 int OFFSET ;
 int REG_SET_FIELD (int ,int ,int ,int) ;

__attribute__((used)) static uint32_t vega10_ih_doorbell_rptr(struct amdgpu_ih_ring *ih)
{
 u32 ih_doorbell_rtpr = 0;

 if (ih->use_doorbell) {
  ih_doorbell_rtpr = REG_SET_FIELD(ih_doorbell_rtpr,
       IH_DOORBELL_RPTR, OFFSET,
       ih->doorbell_index);
  ih_doorbell_rtpr = REG_SET_FIELD(ih_doorbell_rtpr,
       IH_DOORBELL_RPTR,
       ENABLE, 1);
 } else {
  ih_doorbell_rtpr = REG_SET_FIELD(ih_doorbell_rtpr,
       IH_DOORBELL_RPTR,
       ENABLE, 0);
 }
 return ih_doorbell_rtpr;
}
