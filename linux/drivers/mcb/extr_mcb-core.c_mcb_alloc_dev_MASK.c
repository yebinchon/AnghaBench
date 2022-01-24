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
struct mcb_device {struct mcb_bus* bus; } ;
struct mcb_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mcb_device* FUNC0 (int,int /*<<< orphan*/ ) ; 

struct mcb_device *FUNC1(struct mcb_bus *bus)
{
	struct mcb_device *dev;

	dev = FUNC0(sizeof(struct mcb_device), GFP_KERNEL);
	if (!dev)
		return NULL;

	dev->bus = bus;

	return dev;
}