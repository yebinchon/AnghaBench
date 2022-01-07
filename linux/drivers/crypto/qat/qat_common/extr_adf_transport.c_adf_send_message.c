
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct adf_etr_ring_data {int lock; scalar_t__ tail; int ring_number; TYPE_1__* bank; int ring_size; int msg_size; scalar_t__ base_addr; int inflights; } ;
struct TYPE_2__ {int bank_number; int csr_addr; } ;


 scalar_t__ ADF_MAX_INFLIGHTS (int ,int ) ;
 scalar_t__ ADF_MSG_SIZE_TO_BYTES (int ) ;
 int ADF_RING_SIZE_MODULO (int ) ;
 int EAGAIN ;
 int WRITE_CSR_RING_TAIL (int ,int ,int ,scalar_t__) ;
 scalar_t__ adf_modulo (scalar_t__,int ) ;
 scalar_t__ atomic_add_return (int,int ) ;
 int atomic_dec (int ) ;
 int memcpy (void*,int *,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int adf_send_message(struct adf_etr_ring_data *ring, uint32_t *msg)
{
 if (atomic_add_return(1, ring->inflights) >
     ADF_MAX_INFLIGHTS(ring->ring_size, ring->msg_size)) {
  atomic_dec(ring->inflights);
  return -EAGAIN;
 }
 spin_lock_bh(&ring->lock);
 memcpy((void *)((uintptr_t)ring->base_addr + ring->tail), msg,
        ADF_MSG_SIZE_TO_BYTES(ring->msg_size));

 ring->tail = adf_modulo(ring->tail +
    ADF_MSG_SIZE_TO_BYTES(ring->msg_size),
    ADF_RING_SIZE_MODULO(ring->ring_size));
 WRITE_CSR_RING_TAIL(ring->bank->csr_addr, ring->bank->bank_number,
       ring->ring_number, ring->tail);
 spin_unlock_bh(&ring->lock);
 return 0;
}
