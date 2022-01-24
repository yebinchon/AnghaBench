#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {unsigned long dma_base; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 

__attribute__((used)) static int FUNC3(ide_drive_t *drive)
{
	ide_hwif_t *hwif = drive->hwif;
	unsigned long dma_base = hwif->dma_base;
	u8 dma_stat;

	dma_stat = FUNC0(dma_base+2);		/* get DMA status */

	if (!(dma_stat & 4))
		FUNC2(" ide_dma_end dma_stat=%0x err=%x newerr=%x\n",
		  dma_stat, ((dma_stat&7)!=4), ((dma_stat&2)==2));

	FUNC1(dma_stat|0x1b, dma_base+2);	/* clear the INTR & ERROR bits */
	FUNC1(FUNC0(dma_base)&~1, dma_base);	/* !! DO THIS HERE !! stop DMA */

	return (dma_stat & 7) != 4;		/* verify good DMA status */
}