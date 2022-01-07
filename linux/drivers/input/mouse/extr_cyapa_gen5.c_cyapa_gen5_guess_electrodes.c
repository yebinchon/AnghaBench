
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa {int electrodes_rx; int electrodes_x; int electrodes_y; } ;


 int max (int,int) ;
 int min (int,int) ;

__attribute__((used)) static void cyapa_gen5_guess_electrodes(struct cyapa *cyapa,
  int *electrodes_rx, int *electrodes_tx)
{
 if (cyapa->electrodes_rx != 0) {
  *electrodes_rx = cyapa->electrodes_rx;
  *electrodes_tx = (cyapa->electrodes_x == *electrodes_rx) ?
    cyapa->electrodes_y : cyapa->electrodes_x;
 } else {
  *electrodes_tx = min(cyapa->electrodes_x, cyapa->electrodes_y);
  *electrodes_rx = max(cyapa->electrodes_x, cyapa->electrodes_y);
 }
}
