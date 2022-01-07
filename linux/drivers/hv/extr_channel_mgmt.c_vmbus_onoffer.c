
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_channel_offer_channel {scalar_t__ child_relid; } ;
struct vmbus_channel_message_header {int dummy; } ;
struct vmbus_channel {struct vmbus_channel_offer_channel offermsg; } ;
struct TYPE_2__ {int offer_in_progress; } ;


 int DUMP_PREFIX_OFFSET ;
 scalar_t__ INVALID_RELID ;
 int WARN_ON (int) ;
 struct vmbus_channel* alloc_channel () ;
 int atomic_dec (int *) ;
 int check_ready_for_resume_event () ;
 struct vmbus_channel* find_primary_channel_by_offer (struct vmbus_channel_offer_channel*) ;
 scalar_t__ memcmp (struct vmbus_channel_offer_channel*,struct vmbus_channel_offer_channel*,size_t) ;
 int pr_debug (char*,scalar_t__) ;
 int pr_err (char*) ;
 int print_hex_dump_debug (char*,int ,int,int,struct vmbus_channel_offer_channel*,size_t,int) ;
 int trace_vmbus_onoffer (struct vmbus_channel_offer_channel*) ;
 TYPE_1__ vmbus_connection ;
 int vmbus_process_offer (struct vmbus_channel*) ;
 int vmbus_release_relid (scalar_t__) ;
 int vmbus_setup_channel_state (struct vmbus_channel*,struct vmbus_channel_offer_channel*) ;

__attribute__((used)) static void vmbus_onoffer(struct vmbus_channel_message_header *hdr)
{
 struct vmbus_channel_offer_channel *offer;
 struct vmbus_channel *oldchannel, *newchannel;
 size_t offer_sz;

 offer = (struct vmbus_channel_offer_channel *)hdr;

 trace_vmbus_onoffer(offer);

 oldchannel = find_primary_channel_by_offer(offer);

 if (oldchannel != ((void*)0)) {
  atomic_dec(&vmbus_connection.offer_in_progress);
  WARN_ON(oldchannel->offermsg.child_relid != INVALID_RELID);

  oldchannel->offermsg.child_relid = offer->child_relid;

  offer_sz = sizeof(*offer);
  if (memcmp(offer, &oldchannel->offermsg, offer_sz) == 0) {
   check_ready_for_resume_event();
   return;
  }







  pr_debug("vmbus offer changed: relid=%d\n",
    offer->child_relid);

  print_hex_dump_debug("Old vmbus offer: ", DUMP_PREFIX_OFFSET,
         16, 4, &oldchannel->offermsg, offer_sz,
         0);
  print_hex_dump_debug("New vmbus offer: ", DUMP_PREFIX_OFFSET,
         16, 4, offer, offer_sz, 0);


  vmbus_setup_channel_state(oldchannel, offer);

  check_ready_for_resume_event();

  return;
 }


 newchannel = alloc_channel();
 if (!newchannel) {
  vmbus_release_relid(offer->child_relid);
  atomic_dec(&vmbus_connection.offer_in_progress);
  pr_err("Unable to allocate channel object\n");
  return;
 }

 vmbus_setup_channel_state(newchannel, offer);

 vmbus_process_offer(newchannel);
}
