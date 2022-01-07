
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct icside_state {int channel; scalar_t__ irq_port; scalar_t__ enabled; } ;
struct expansion_card {int dummy; } ;
struct TYPE_4__ {int channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 struct expansion_card* ECARD_DEV (int ) ;
 scalar_t__ ICS_ARCIN_V6_INTROFFSET_1 ;
 scalar_t__ ICS_ARCIN_V6_INTROFFSET_2 ;
 struct icside_state* ecard_get_drvdata (struct expansion_card*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int readb (scalar_t__) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void icside_maskproc(ide_drive_t *drive, int mask)
{
 ide_hwif_t *hwif = drive->hwif;
 struct expansion_card *ec = ECARD_DEV(hwif->dev);
 struct icside_state *state = ecard_get_drvdata(ec);
 unsigned long flags;

 local_irq_save(flags);

 state->channel = hwif->channel;

 if (state->enabled && !mask) {
  switch (hwif->channel) {
  case 0:
   writeb(0, state->irq_port + ICS_ARCIN_V6_INTROFFSET_1);
   readb(state->irq_port + ICS_ARCIN_V6_INTROFFSET_2);
   break;
  case 1:
   writeb(0, state->irq_port + ICS_ARCIN_V6_INTROFFSET_2);
   readb(state->irq_port + ICS_ARCIN_V6_INTROFFSET_1);
   break;
  }
 } else {
  readb(state->irq_port + ICS_ARCIN_V6_INTROFFSET_2);
  readb(state->irq_port + ICS_ARCIN_V6_INTROFFSET_1);
 }

 local_irq_restore(flags);
}
