#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fpga_region {int dummy; } ;
struct dfl_fme_region {TYPE_1__* region; } ;
struct dfl_fme {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct dfl_fme_region* FUNC0 (struct dfl_fme*,int) ; 
 int /*<<< orphan*/  dfl_fme_region_match ; 
 struct fpga_region* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fpga_region *FUNC2(struct dfl_fme *fme, int port_id)
{
	struct dfl_fme_region *fme_region;
	struct fpga_region *region;

	fme_region = FUNC0(fme, port_id);
	if (!fme_region)
		return NULL;

	region = FUNC1(NULL, &fme_region->region->dev,
					dfl_fme_region_match);
	if (!region)
		return NULL;

	return region;
}