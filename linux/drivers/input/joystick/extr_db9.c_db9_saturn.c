
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {int dummy; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int n_pads; } ;


 int DB9_MAX_DEVICES ;



 TYPE_1__* db9_modes ;
 unsigned char db9_saturn_read_packet (struct parport*,unsigned char*,int,int) ;
 int db9_saturn_report (unsigned char,unsigned char*,struct input_dev**,int,int) ;
 int min (int ,int ) ;

__attribute__((used)) static int db9_saturn(int mode, struct parport *port, struct input_dev *devs[])
{
 unsigned char id, data[60];
 int type, n, max_pads;
 int tmp, i;

 switch (mode) {
 case 128:
  type = 0;
  n = 1;
  break;
 case 130:
  type = 1;
  n = 1;
  break;
 case 129:
  type = 1;
  n = 2;
  break;
 default:
  return -1;
 }
 max_pads = min(db9_modes[mode].n_pads, DB9_MAX_DEVICES);
 for (tmp = 0, i = 0; i < n; i++) {
  id = db9_saturn_read_packet(port, data, type + i, 1);
  tmp = db9_saturn_report(id, data, devs, tmp, max_pads);
 }
 return 0;
}
