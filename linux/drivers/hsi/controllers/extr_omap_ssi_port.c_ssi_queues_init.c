
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_ssi_port {int brkqueue; int * rxqueue; int * txqueue; } ;


 int INIT_LIST_HEAD (int *) ;
 unsigned int SSI_MAX_CHANNELS ;

__attribute__((used)) static void ssi_queues_init(struct omap_ssi_port *omap_port)
{
 unsigned int ch;

 for (ch = 0; ch < SSI_MAX_CHANNELS; ch++) {
  INIT_LIST_HEAD(&omap_port->txqueue[ch]);
  INIT_LIST_HEAD(&omap_port->rxqueue[ch]);
 }
 INIT_LIST_HEAD(&omap_port->brkqueue);
}
