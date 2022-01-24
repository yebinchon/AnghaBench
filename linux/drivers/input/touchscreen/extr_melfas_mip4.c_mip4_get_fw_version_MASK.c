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
struct mip4_ts {int /*<<< orphan*/  fw_version; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MIP4_R0_INFO ; 
 int /*<<< orphan*/  MIP4_R1_INFO_VERSION_BOOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (struct mip4_ts*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mip4_ts *ts)
{
	u8 cmd[] = { MIP4_R0_INFO, MIP4_R1_INFO_VERSION_BOOT };
	u8 buf[sizeof(ts->fw_version)];
	int error;

	error = FUNC1(ts, cmd, sizeof(cmd), buf, sizeof(buf));
	if (error) {
		FUNC0(&ts->fw_version, 0xff, sizeof(ts->fw_version));
		return error;
	}

	FUNC2(buf, &ts->fw_version);

	return 0;
}