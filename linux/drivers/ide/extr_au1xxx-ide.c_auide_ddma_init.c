
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ide_port_info {int dummy; } ;
typedef int ide_hwif_t ;
typedef int dbdev_tab_t ;
struct TYPE_3__ {void* rx_chan; void* tx_chan; void* rx_desc_head; void* tx_desc_head; void* rx_dev_id; void* tx_dev_id; int regbase; } ;
typedef TYPE_1__ _auide_hwif ;


 int DEV_FLAGS_BURSTABLE ;
 int DEV_FLAGS_IN ;
 int DEV_FLAGS_OUT ;
 int DEV_FLAGS_SYNC ;
 void* DSCR_CMD0_ALWAYS ;
 int NUM_DESCRIPTORS ;
 void* au1xxx_dbdma_chan_alloc (void*,void*,int *,void*) ;
 scalar_t__ au1xxx_dbdma_ring_alloc (void*,int ) ;
 int au1xxx_dbdma_start (void*) ;
 void* au1xxx_ddma_add_device (int *) ;
 TYPE_1__ auide_hwif ;
 int auide_init_dbdma_dev (int *,int ,int,int,int,int ) ;

__attribute__((used)) static int auide_ddma_init(ide_hwif_t *hwif, const struct ide_port_info *d)
{
 _auide_hwif *auide = &auide_hwif;
 dbdev_tab_t source_dev_tab;
 int flags;




 flags = DEV_FLAGS_SYNC;



 auide_init_dbdma_dev(&source_dev_tab, (u32)DSCR_CMD0_ALWAYS, 8, 32,
        DEV_FLAGS_OUT | flags, auide->regbase);
  auide->tx_dev_id = au1xxx_ddma_add_device( &source_dev_tab );

 auide_init_dbdma_dev(&source_dev_tab, (u32)DSCR_CMD0_ALWAYS, 8, 32,
        DEV_FLAGS_IN | flags, auide->regbase);
  auide->rx_dev_id = au1xxx_ddma_add_device( &source_dev_tab );


 auide->tx_chan = au1xxx_dbdma_chan_alloc(DSCR_CMD0_ALWAYS,
       auide->tx_dev_id,
       ((void*)0),
       (void*)auide);


 auide->rx_chan = au1xxx_dbdma_chan_alloc(auide->rx_dev_id,
       DSCR_CMD0_ALWAYS,
       ((void*)0),
       (void*)auide);

 auide->tx_desc_head = (void*)au1xxx_dbdma_ring_alloc(auide->tx_chan,
            NUM_DESCRIPTORS);
 auide->rx_desc_head = (void*)au1xxx_dbdma_ring_alloc(auide->rx_chan,
            NUM_DESCRIPTORS);

 au1xxx_dbdma_start( auide->tx_chan );
 au1xxx_dbdma_start( auide->rx_chan );

 return 0;
}
