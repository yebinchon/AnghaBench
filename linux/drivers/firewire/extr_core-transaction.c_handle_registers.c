
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_request {int dummy; } ;
struct fw_card {int split_timeout_hi; int split_timeout_lo; int broadcast_channel; int maint_utility_register; int lock; TYPE_1__* driver; int priority_budget_implemented; } ;
typedef int __be32 ;
struct TYPE_2__ {int (* read_csr ) (struct fw_card*,int) ;int (* write_csr ) (struct fw_card*,int const,int) ;} ;


 int BROADCAST_CHANNEL_INITIAL ;
 int BROADCAST_CHANNEL_VALID ;
 int BUG () ;
 unsigned long long CSR_REGISTER_BASE ;



 int CSR_STATE_BIT_ABDICATE ;


 int RCODE_ADDRESS_ERROR ;
 int RCODE_COMPLETE ;
 int RCODE_TYPE_ERROR ;
 int TCODE_READ_QUADLET_REQUEST ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int fw_send_response (struct fw_card*,struct fw_request*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct fw_card*,int) ;
 int stub2 (struct fw_card*,int,int) ;
 int stub3 (struct fw_card*,int const,int) ;
 int update_split_timeout (struct fw_card*) ;

__attribute__((used)) static void handle_registers(struct fw_card *card, struct fw_request *request,
  int tcode, int destination, int source, int generation,
  unsigned long long offset, void *payload, size_t length,
  void *callback_data)
{
 int reg = offset & ~CSR_REGISTER_BASE;
 __be32 *data = payload;
 int rcode = RCODE_COMPLETE;
 unsigned long flags;

 switch (reg) {
 case 133:
  if (!card->priority_budget_implemented) {
   rcode = RCODE_ADDRESS_ERROR;
   break;
  }


 case 134:






 case 129:
 case 128:
 case 136:
 case 139:
 case 141:
  if (tcode == TCODE_READ_QUADLET_REQUEST)
   *data = cpu_to_be32(card->driver->read_csr(card, reg));
  else if (tcode == TCODE_WRITE_QUADLET_REQUEST)
   card->driver->write_csr(card, reg, be32_to_cpu(*data));
  else
   rcode = RCODE_TYPE_ERROR;
  break;

 case 132:
  if (tcode == TCODE_WRITE_QUADLET_REQUEST)
   card->driver->write_csr(card, 129,
      CSR_STATE_BIT_ABDICATE);
  else
   rcode = RCODE_TYPE_ERROR;
  break;

 case 131:
  if (tcode == TCODE_READ_QUADLET_REQUEST) {
   *data = cpu_to_be32(card->split_timeout_hi);
  } else if (tcode == TCODE_WRITE_QUADLET_REQUEST) {
   spin_lock_irqsave(&card->lock, flags);
   card->split_timeout_hi = be32_to_cpu(*data) & 7;
   update_split_timeout(card);
   spin_unlock_irqrestore(&card->lock, flags);
  } else {
   rcode = RCODE_TYPE_ERROR;
  }
  break;

 case 130:
  if (tcode == TCODE_READ_QUADLET_REQUEST) {
   *data = cpu_to_be32(card->split_timeout_lo);
  } else if (tcode == TCODE_WRITE_QUADLET_REQUEST) {
   spin_lock_irqsave(&card->lock, flags);
   card->split_timeout_lo =
     be32_to_cpu(*data) & 0xfff80000;
   update_split_timeout(card);
   spin_unlock_irqrestore(&card->lock, flags);
  } else {
   rcode = RCODE_TYPE_ERROR;
  }
  break;

 case 135:
  if (tcode == TCODE_READ_QUADLET_REQUEST)
   *data = card->maint_utility_register;
  else if (tcode == TCODE_WRITE_QUADLET_REQUEST)
   card->maint_utility_register = *data;
  else
   rcode = RCODE_TYPE_ERROR;
  break;

 case 142:
  if (tcode == TCODE_READ_QUADLET_REQUEST)
   *data = cpu_to_be32(card->broadcast_channel);
  else if (tcode == TCODE_WRITE_QUADLET_REQUEST)
   card->broadcast_channel =
       (be32_to_cpu(*data) & BROADCAST_CHANNEL_VALID) |
       BROADCAST_CHANNEL_INITIAL;
  else
   rcode = RCODE_TYPE_ERROR;
  break;

 case 140:
 case 143:
 case 138:
 case 137:







  BUG();
  break;

 default:
  rcode = RCODE_ADDRESS_ERROR;
  break;
 }

 fw_send_response(card, request, rcode);
}
