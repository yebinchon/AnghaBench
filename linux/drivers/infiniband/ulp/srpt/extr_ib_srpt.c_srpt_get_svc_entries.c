
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct ib_dm_svc_entries {TYPE_1__* service_entries; } ;
struct TYPE_4__ {void* status; } ;
struct ib_dm_mad {TYPE_2__ mad_hdr; scalar_t__ data; } ;
struct TYPE_3__ {int name; int id; } ;


 int DM_MAD_STATUS_INVALID_FIELD ;
 int DM_MAD_STATUS_NO_IOC ;
 char* SRP_SERVICE_NAME_PREFIX ;
 int WARN_ON (int) ;
 void* cpu_to_be16 (int ) ;
 int cpu_to_be64 (int ) ;
 int memset (struct ib_dm_svc_entries*,int ,int) ;
 int snprintf (int ,int,char*,char*,int ) ;

__attribute__((used)) static void srpt_get_svc_entries(u64 ioc_guid,
     u16 slot, u8 hi, u8 lo, struct ib_dm_mad *mad)
{
 struct ib_dm_svc_entries *svc_entries;

 WARN_ON(!ioc_guid);

 if (!slot || slot > 16) {
  mad->mad_hdr.status
   = cpu_to_be16(DM_MAD_STATUS_INVALID_FIELD);
  return;
 }

 if (slot > 2 || lo > hi || hi > 1) {
  mad->mad_hdr.status
   = cpu_to_be16(DM_MAD_STATUS_NO_IOC);
  return;
 }

 svc_entries = (struct ib_dm_svc_entries *)mad->data;
 memset(svc_entries, 0, sizeof(*svc_entries));
 svc_entries->service_entries[0].id = cpu_to_be64(ioc_guid);
 snprintf(svc_entries->service_entries[0].name,
   sizeof(svc_entries->service_entries[0].name),
   "%s%016llx",
   SRP_SERVICE_NAME_PREFIX,
   ioc_guid);

 mad->mad_hdr.status = 0;
}
