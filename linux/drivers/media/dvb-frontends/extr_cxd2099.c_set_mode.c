
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxd {int mode; } ;


 int write_regm (struct cxd*,int,int,int) ;

__attribute__((used)) static void set_mode(struct cxd *ci, int mode)
{
 if (mode == ci->mode)
  return;

 switch (mode) {
 case 0x00:
  write_regm(ci, 0x06, 0x00, 0x07);
  break;
 case 0x01:
  write_regm(ci, 0x06, 0x02, 0x07);
  break;
 default:
  break;
 }
 ci->mode = mode;
}
