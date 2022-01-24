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
struct hideep_ts {TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (struct hideep_ts*) ; 
 int FUNC4 (struct hideep_ts*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC5 (struct hideep_ts*) ; 

__attribute__((used)) static int FUNC6(struct hideep_ts *ts,
				  const __be32 *ucode, size_t ucode_len)
{
	int error, error2;

	FUNC1(&ts->client->dev, "starting firmware update");

	/* enter program mode */
	error = FUNC3(ts);
	if (error)
		return error;

	error = FUNC4(ts, ucode, ucode_len);
	if (error)
		FUNC2(&ts->client->dev,
			"firmware update failed: %d\n", error);
	else
		FUNC1(&ts->client->dev, "firmware updated successfully\n");

	FUNC0(1000);

	error2 = FUNC5(ts);
	if (error2)
		FUNC2(&ts->client->dev,
			"failed to load dwz after firmware update: %d\n",
			error2);

	return error ?: error2;
}