
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct adf_etr_bank_data {int ring_mask; int lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void adf_unreserve_ring(struct adf_etr_bank_data *bank, uint32_t ring)
{
 spin_lock(&bank->lock);
 bank->ring_mask &= ~(1 << ring);
 spin_unlock(&bank->lock);
}
