
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lima_ip {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int LIMA_PP_VERSION ;
 int dev_info (int ,char*,int ,char*,int,int) ;
 int lima_ip_name (struct lima_ip*) ;
 int pp_read (int ) ;

__attribute__((used)) static void lima_pp_print_version(struct lima_ip *ip)
{
 u32 version, major, minor;
 char *name;

 version = pp_read(LIMA_PP_VERSION);
 major = (version >> 8) & 0xFF;
 minor = version & 0xFF;
 switch (version >> 16) {
 case 0xC807:
     name = "mali200";
  break;
 case 0xCE07:
  name = "mali300";
  break;
 case 0xCD07:
  name = "mali400";
  break;
 case 0xCF07:
  name = "mali450";
  break;
 default:
  name = "unknown";
  break;
 }
 dev_info(ip->dev->dev, "%s - %s version major %d minor %d\n",
   lima_ip_name(ip), name, major, minor);
}
