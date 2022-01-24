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
struct iw_cm_id {int /*<<< orphan*/ * provider_data; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iw_cm_id*) ; 

int FUNC3(struct iw_cm_id *id)
{
	if (!id->provider_data) {
		FUNC1(id->device, "no cep(s)\n");
		return 0;
	}
	FUNC2(id);
	FUNC0(id->provider_data);
	id->provider_data = NULL;

	return 0;
}