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
typedef  int u32 ;
struct dimm_info {TYPE_1__* mci; int /*<<< orphan*/ * location; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int n_layers; int** ce_per_layer; int /*<<< orphan*/  layers; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct dimm_info* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				      struct device_attribute *mattr,
				      char *data)
{
	struct dimm_info *dimm = FUNC2(dev);
	u32 count;
	int off;

	off = FUNC0(dimm->mci->layers,
			    dimm->mci->n_layers,
			    dimm->location[0],
			    dimm->location[1],
			    dimm->location[2]);
	count = dimm->mci->ce_per_layer[dimm->mci->n_layers-1][off];
	return FUNC1(data, "%u\n", count);
}