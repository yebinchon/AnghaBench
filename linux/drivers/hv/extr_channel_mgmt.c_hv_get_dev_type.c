
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_4__ {int if_type; } ;
struct TYPE_5__ {TYPE_1__ offer; } ;
struct vmbus_channel {TYPE_2__ offermsg; } ;
typedef int guid_t ;
struct TYPE_6__ {int guid; } ;


 size_t HV_IDE ;
 size_t HV_UNKNOWN ;
 scalar_t__ guid_equal (int const*,int *) ;
 scalar_t__ is_hvsock_channel (struct vmbus_channel const*) ;
 scalar_t__ is_unsupported_vmbus_devs (int const*) ;
 int pr_info (char*,int const*) ;
 TYPE_3__* vmbus_devs ;

__attribute__((used)) static u16 hv_get_dev_type(const struct vmbus_channel *channel)
{
 const guid_t *guid = &channel->offermsg.offer.if_type;
 u16 i;

 if (is_hvsock_channel(channel) || is_unsupported_vmbus_devs(guid))
  return HV_UNKNOWN;

 for (i = HV_IDE; i < HV_UNKNOWN; i++) {
  if (guid_equal(guid, &vmbus_devs[i].guid))
   return i;
 }
 pr_info("Unknown GUID: %pUl\n", guid);
 return i;
}
