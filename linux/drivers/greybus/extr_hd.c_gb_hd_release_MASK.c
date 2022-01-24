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
struct gb_host_device {int /*<<< orphan*/  cport_id_map; int /*<<< orphan*/  bus_id; scalar_t__ svc; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  gb_hd_bus_id_map ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_host_device*) ; 
 struct gb_host_device* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_host_device*) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct gb_host_device *hd = FUNC4(dev);

	FUNC5(hd);

	if (hd->svc)
		FUNC0(hd->svc);
	FUNC2(&gb_hd_bus_id_map, hd->bus_id);
	FUNC1(&hd->cport_id_map);
	FUNC3(hd);
}