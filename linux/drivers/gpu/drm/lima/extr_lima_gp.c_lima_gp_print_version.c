
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lima_ip {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int LIMA_GP_VERSION ;
 int dev_info (int ,char*,int ,char*,int,int) ;
 int gp_read (int ) ;
 int lima_ip_name (struct lima_ip*) ;

__attribute__((used)) static void lima_gp_print_version(struct lima_ip *ip)
{
 u32 version, major, minor;
 char *name;

 version = gp_read(LIMA_GP_VERSION);
 major = (version >> 8) & 0xFF;
 minor = version & 0xFF;
 switch (version >> 16) {
 case 0xA07:
     name = "mali200";
  break;
 case 0xC07:
  name = "mali300";
  break;
 case 0xB07:
  name = "mali400";
  break;
 case 0xD07:
  name = "mali450";
  break;
 default:
  name = "unknown";
  break;
 }
 dev_info(ip->dev->dev, "%s - %s version major %d minor %d\n",
   lima_ip_name(ip), name, major, minor);
}
