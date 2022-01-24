#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device {int dummy; } ;
struct dev_dax {struct dax_device* dax_dev; struct dax_region* region; } ;
struct dax_region {int dummy; } ;
struct dax_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dax_region*) ; 
 int /*<<< orphan*/  FUNC1 (struct dev_dax*) ; 
 int /*<<< orphan*/  FUNC2 (struct dax_device*) ; 
 struct dev_dax* FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct dev_dax *dev_dax = FUNC3(dev);
	struct dax_region *dax_region = dev_dax->region;
	struct dax_device *dax_dev = dev_dax->dax_dev;

	FUNC0(dax_region);
	FUNC2(dax_dev);
	FUNC1(dev_dax);
}