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
struct ssp_msg {int dummy; } ;
struct ssp_data {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SSP_AP2HUB_READ ; 
 char FUNC0 (struct ssp_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSP_MSG2SSP_AP_WHOAMI ; 
 int /*<<< orphan*/  FUNC1 (struct ssp_msg*) ; 
 struct ssp_msg* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ssp_data*,struct ssp_msg*,int) ; 

int FUNC4(struct ssp_data *data)
{
	int ret;
	char buffer;
	struct ssp_msg *msg;

	msg = FUNC2(SSP_MSG2SSP_AP_WHOAMI, 1, SSP_AP2HUB_READ, 0);
	if (!msg)
		return -ENOMEM;

	ret = FUNC3(data, msg, 1000);

	buffer = FUNC0(msg, 0);

	FUNC1(msg);

	return ret < 0 ? ret : buffer;
}