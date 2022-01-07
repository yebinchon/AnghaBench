
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint16_t ;
struct kone_settings {int checksum; } ;


 int cpu_to_le16 (unsigned char) ;

__attribute__((used)) static void kone_set_settings_checksum(struct kone_settings *settings)
{
 uint16_t checksum = 0;
 unsigned char *address = (unsigned char *)settings;
 int i;

 for (i = 0; i < sizeof(struct kone_settings) - 2; ++i, ++address)
  checksum += *address;
 settings->checksum = cpu_to_le16(checksum);
}
