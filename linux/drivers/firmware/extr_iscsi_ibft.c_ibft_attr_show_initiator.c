
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibft_kobject {void* header; struct ibft_initiator* initiator; } ;
struct TYPE_2__ {int index; int flags; } ;
struct ibft_initiator {int initiator_name_off; int initiator_name_len; int sec_radius_server; int pri_radius_server; int slp_server; int isns_server; TYPE_1__ hdr; } ;
typedef int ssize_t ;
 int sprintf (char*,char*,int) ;
 int sprintf_ipaddr (char*,int ) ;
 int sprintf_string (char*,int ,char*) ;

__attribute__((used)) static ssize_t ibft_attr_show_initiator(void *data, int type, char *buf)
{
 struct ibft_kobject *entry = data;
 struct ibft_initiator *initiator = entry->initiator;
 void *ibft_loc = entry->header;
 char *str = buf;

 if (!initiator)
  return 0;

 switch (type) {
 case 133:
  str += sprintf(str, "%d\n", initiator->hdr.index);
  break;
 case 134:
  str += sprintf(str, "%d\n", initiator->hdr.flags);
  break;
 case 131:
  str += sprintf_ipaddr(str, initiator->isns_server);
  break;
 case 128:
  str += sprintf_ipaddr(str, initiator->slp_server);
  break;
 case 130:
  str += sprintf_ipaddr(str, initiator->pri_radius_server);
  break;
 case 129:
  str += sprintf_ipaddr(str, initiator->sec_radius_server);
  break;
 case 132:
  str += sprintf_string(str, initiator->initiator_name_len,
          (char *)ibft_loc +
          initiator->initiator_name_off);
  break;
 default:
  break;
 }

 return str - buf;
}
