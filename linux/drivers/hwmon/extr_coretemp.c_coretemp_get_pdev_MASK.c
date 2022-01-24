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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int max_zones ; 
 int FUNC0 (unsigned int) ; 
 struct platform_device** zone_devices ; 

__attribute__((used)) static struct platform_device *FUNC1(unsigned int cpu)
{
	int id = FUNC0(cpu);

	if (id >= 0 && id < max_zones)
		return zone_devices[id];
	return NULL;
}