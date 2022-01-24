#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct r0conf {int nr_strip_zones; TYPE_2__* strip_zone; TYPE_1__** devlist; } ;
struct mddev {struct r0conf* private; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_4__ {int nb_dev; scalar_t__ zone_end; scalar_t__ dev_start; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long,...) ; 
 scalar_t__ FUNC3 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mddev *mddev)
{
	int j, k;
	sector_t zone_size = 0;
	sector_t zone_start = 0;
	char b[BDEVNAME_SIZE];
	struct r0conf *conf = mddev->private;
	int raid_disks = conf->strip_zone[0].nb_dev;
	FUNC2("md: RAID0 configuration for %s - %d zone%s\n",
		 FUNC1(mddev),
		 conf->nr_strip_zones, conf->nr_strip_zones==1?"":"s");
	for (j = 0; j < conf->nr_strip_zones; j++) {
		char line[200];
		int len = 0;

		for (k = 0; k < conf->strip_zone[j].nb_dev; k++)
			len += FUNC3(line+len, 200-len, "%s%s", k?"/":"",
					FUNC0(conf->devlist[j*raid_disks
							       + k]->bdev, b));
		FUNC2("md: zone%d=[%s]\n", j, line);

		zone_size  = conf->strip_zone[j].zone_end - zone_start;
		FUNC2("      zone-offset=%10lluKB, device-offset=%10lluKB, size=%10lluKB\n",
			(unsigned long long)zone_start>>1,
			(unsigned long long)conf->strip_zone[j].dev_start>>1,
			(unsigned long long)zone_size>>1);
		zone_start = conf->strip_zone[j].zone_end;
	}
}