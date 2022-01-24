#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {int /*<<< orphan*/  dev; TYPE_2__* priv; } ;
struct ide_host {TYPE_3__** ports; } ;
struct TYPE_5__ {scalar_t__ ndev; struct ide_host* host; } ;
typedef  TYPE_2__ ide_info_t ;
struct TYPE_4__ {unsigned long data_addr; unsigned long ctl_addr; } ;
struct TYPE_6__ {TYPE_1__ io_ports; } ;
typedef  TYPE_3__ ide_hwif_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ide_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int) ; 

__attribute__((used)) static void FUNC4(struct pcmcia_device *link)
{
    ide_info_t *info = link->priv;
    struct ide_host *host = info->host;

    FUNC0(&link->dev, "ide_release(0x%p)\n", link);

    if (info->ndev) {
	ide_hwif_t *hwif = host->ports[0];
	unsigned long data_addr, ctl_addr;

	data_addr = hwif->io_ports.data_addr;
	ctl_addr = hwif->io_ports.ctl_addr;

	FUNC1(host);
	info->ndev = 0;

	FUNC3(ctl_addr, 1);
	FUNC3(data_addr, 8);
    }

    FUNC2(link);
}