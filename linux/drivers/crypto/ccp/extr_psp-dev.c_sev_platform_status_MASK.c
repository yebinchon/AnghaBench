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
struct sev_user_data_status {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEV_CMD_PLATFORM_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sev_user_data_status*,int*) ; 

int FUNC1(struct sev_user_data_status *data, int *error)
{
	return FUNC0(SEV_CMD_PLATFORM_STATUS, data, error);
}