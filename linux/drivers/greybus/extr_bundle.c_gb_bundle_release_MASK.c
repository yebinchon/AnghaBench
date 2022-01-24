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
struct gb_bundle {struct gb_bundle* cport_desc; struct gb_bundle* state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_bundle*) ; 
 struct gb_bundle* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_bundle*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct gb_bundle *bundle = FUNC1(dev);

	FUNC2(bundle);

	FUNC0(bundle->state);
	FUNC0(bundle->cport_desc);
	FUNC0(bundle);
}