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
struct gb_svc {int /*<<< orphan*/  wq; int /*<<< orphan*/  device_id_map; scalar_t__ connection; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_svc*) ; 
 struct gb_svc* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct gb_svc *svc = FUNC4(dev);

	if (svc->connection)
		FUNC1(svc->connection);
	FUNC2(&svc->device_id_map);
	FUNC0(svc->wq);
	FUNC3(svc);
}