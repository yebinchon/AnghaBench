
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l4 {int port; } ;
struct gameport {struct l4* port_data; } ;


 scalar_t__ l4_getcal (int ,int*) ;
 scalar_t__ l4_setcal (int ,int*) ;

__attribute__((used)) static int l4_calibrate(struct gameport *gameport, int *axes, int *max)
{
 int i, t;
 int cal[4];
 struct l4 *l4 = gameport->port_data;

 if (l4_getcal(l4->port, cal))
  return -1;

 for (i = 0; i < 4; i++) {
  t = (max[i] * cal[i]) / 200;
  t = (t < 1) ? 1 : ((t > 255) ? 255 : t);
  axes[i] = (axes[i] < 0) ? -1 : (axes[i] * cal[i]) / t;
  axes[i] = (axes[i] > 252) ? 252 : axes[i];
  cal[i] = t;
 }

 if (l4_setcal(l4->port, cal))
  return -1;

 return 0;
}
