
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ver ;
typedef int u8 ;
struct bcm3510_state {int dummy; } ;
struct bcm3510_hab_cmd_get_version_info {scalar_t__ script_version; scalar_t__ config_version; scalar_t__ demod_version; int microcode_version; } ;


 scalar_t__ BCM3510_DEF_CONFIG_VERSION ;
 scalar_t__ BCM3510_DEF_DEMOD_VERSION ;
 scalar_t__ BCM3510_DEF_SCRIPT_VERSION ;
 int CMD_GET_VERSION_INFO ;
 int ENODEV ;
 int MSGID_GET_VERSION_INFO ;
 int bcm3510_do_hab_cmd (struct bcm3510_state*,int ,int ,int *,int ,int *,int) ;
 int deb_info (char*,...) ;

__attribute__((used)) static int bcm3510_check_firmware_version(struct bcm3510_state *st)
{
 struct bcm3510_hab_cmd_get_version_info ver;
 bcm3510_do_hab_cmd(st,CMD_GET_VERSION_INFO,MSGID_GET_VERSION_INFO,((void*)0),0,(u8*)&ver,sizeof(ver));

 deb_info("Version information: 0x%02x 0x%02x 0x%02x 0x%02x\n",
  ver.microcode_version, ver.script_version, ver.config_version, ver.demod_version);

 if (ver.script_version == BCM3510_DEF_SCRIPT_VERSION &&
  ver.config_version == BCM3510_DEF_CONFIG_VERSION &&
  ver.demod_version == BCM3510_DEF_DEMOD_VERSION)
  return 0;

 deb_info("version check failed\n");
 return -ENODEV;
}
