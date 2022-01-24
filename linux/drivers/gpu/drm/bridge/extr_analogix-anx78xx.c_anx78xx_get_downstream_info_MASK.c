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
typedef  int /*<<< orphan*/  u8 ;
struct anx78xx {int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DP_SINK_COUNT ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EIO ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct anx78xx *anx78xx)
{
	u8 value;
	int err;

	err = FUNC2(&anx78xx->aux, DP_SINK_COUNT, &value);
	if (err < 0) {
		FUNC1("Get sink count failed %d\n", err);
		return err;
	}

	if (!FUNC0(value)) {
		FUNC1("Downstream disconnected\n");
		return -EIO;
	}

	return 0;
}