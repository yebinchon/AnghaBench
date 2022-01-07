
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct adf_etr_ring_data* private; } ;
struct adf_etr_ring_data {void* base_addr; int msg_size; int ring_size; } ;
typedef int loff_t ;


 int ADF_MSG_SIZE_TO_BYTES (int ) ;
 int ADF_SIZE_TO_RING_SIZE_IN_BYTES (int ) ;

__attribute__((used)) static void *adf_ring_next(struct seq_file *sfile, void *v, loff_t *pos)
{
 struct adf_etr_ring_data *ring = sfile->private;

 if (*pos >= (ADF_SIZE_TO_RING_SIZE_IN_BYTES(ring->ring_size) /
       ADF_MSG_SIZE_TO_BYTES(ring->msg_size)))
  return ((void*)0);

 return ring->base_addr +
  (ADF_MSG_SIZE_TO_BYTES(ring->msg_size) * (*pos)++);
}
