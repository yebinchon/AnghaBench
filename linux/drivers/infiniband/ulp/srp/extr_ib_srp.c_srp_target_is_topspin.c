
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct srp_target_port {int ioc_guid; } ;


 int memcmp (int *,int const*,int) ;
 scalar_t__ topspin_workarounds ;

__attribute__((used)) static int srp_target_is_topspin(struct srp_target_port *target)
{
 static const u8 topspin_oui[3] = { 0x00, 0x05, 0xad };
 static const u8 cisco_oui[3] = { 0x00, 0x1b, 0x0d };

 return topspin_workarounds &&
  (!memcmp(&target->ioc_guid, topspin_oui, sizeof topspin_oui) ||
   !memcmp(&target->ioc_guid, cisco_oui, sizeof cisco_oui));
}
