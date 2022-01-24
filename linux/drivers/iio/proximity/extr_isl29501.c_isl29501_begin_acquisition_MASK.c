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
struct isl29501_private {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISL29501_COMMAND_REGISTER ; 
 int /*<<< orphan*/  ISL29501_EMUL_SAMPLE_START_PIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct isl29501_private *isl29501)
{
	int ret;

	ret = FUNC1(isl29501->client,
					ISL29501_COMMAND_REGISTER,
					ISL29501_EMUL_SAMPLE_START_PIN);
	if (ret < 0)
		FUNC0(&isl29501->client->dev,
			"cannot begin acquisition %d\n", ret);

	return ret;
}