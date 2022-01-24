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
struct mem_ctl_info {int n_layers; TYPE_1__* layers; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {size_t type; int size; } ;

/* Variables and functions */
 char** edac_layer_name ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int) ; 
 struct mem_ctl_info* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				     struct device_attribute *mattr,
				     char *data)
{
	struct mem_ctl_info *mci = FUNC1(dev);
	int i;
	char *p = data;

	for (i = 0; i < mci->n_layers; i++) {
		p += FUNC0(p, "%s %d ",
			     edac_layer_name[mci->layers[i].type],
			     mci->layers[i].size - 1);
	}

	return p - data;
}