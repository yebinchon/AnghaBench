
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int read_data; } ;
struct cxd {int cammode; TYPE_1__* client; int write_busy; TYPE_2__ en; } ;
struct TYPE_3__ {int dev; } ;


 int dev_info (int *,char*) ;
 int read_reg (struct cxd*,int,int *) ;
 int write_reg (struct cxd*,int,int) ;
 int write_regm (struct cxd*,int,int,int) ;

__attribute__((used)) static void cam_mode(struct cxd *ci, int mode)
{
 u8 dummy;

 if (mode == ci->cammode)
  return;

 switch (mode) {
 case 0x00:
  write_regm(ci, 0x20, 0x80, 0x80);
  break;
 case 0x01:
  if (!ci->en.read_data)
   return;
  ci->write_busy = 0;
  dev_info(&ci->client->dev, "enable cam buffer mode\n");
  write_reg(ci, 0x0d, 0x00);
  write_reg(ci, 0x0e, 0x01);
  write_regm(ci, 0x08, 0x40, 0x40);
  read_reg(ci, 0x12, &dummy);
  write_regm(ci, 0x08, 0x80, 0x80);
  break;
 default:
  break;
 }
 ci->cammode = mode;
}
