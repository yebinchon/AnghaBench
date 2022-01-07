
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_device {int max_rec; scalar_t__ bc_implemented; int max_speed; int node_id; int irmc; struct fw_card* card; } ;
struct fw_card {int broadcast_channel_allocated; } ;
typedef int __be32 ;


 scalar_t__ BC_IMPLEMENTED ;
 scalar_t__ BC_UNIMPLEMENTED ;
 scalar_t__ BC_UNKNOWN ;
 int BROADCAST_CHANNEL_INITIAL ;
 int BROADCAST_CHANNEL_VALID ;
 scalar_t__ CSR_BROADCAST_CHANNEL ;
 scalar_t__ CSR_REGISTER_BASE ;


 int TCODE_READ_QUADLET_REQUEST ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int cpu_to_be32 (int) ;
 int fw_run_transaction (struct fw_card*,int ,int ,int,int ,scalar_t__,int*,int) ;

__attribute__((used)) static void set_broadcast_channel(struct fw_device *device, int generation)
{
 struct fw_card *card = device->card;
 __be32 data;
 int rcode;

 if (!card->broadcast_channel_allocated)
  return;
 if (!device->irmc || device->max_rec < 8)
  return;





 if (device->bc_implemented == BC_UNKNOWN) {
  rcode = fw_run_transaction(card, TCODE_READ_QUADLET_REQUEST,
    device->node_id, generation, device->max_speed,
    CSR_REGISTER_BASE + CSR_BROADCAST_CHANNEL,
    &data, 4);
  switch (rcode) {
  case 128:
   if (data & cpu_to_be32(1 << 31)) {
    device->bc_implemented = BC_IMPLEMENTED;
    break;
   }

  case 129:
   device->bc_implemented = BC_UNIMPLEMENTED;
  }
 }

 if (device->bc_implemented == BC_IMPLEMENTED) {
  data = cpu_to_be32(BROADCAST_CHANNEL_INITIAL |
       BROADCAST_CHANNEL_VALID);
  fw_run_transaction(card, TCODE_WRITE_QUADLET_REQUEST,
    device->node_id, generation, device->max_speed,
    CSR_REGISTER_BASE + CSR_BROADCAST_CHANNEL,
    &data, 4);
 }
}
