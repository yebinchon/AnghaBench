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
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SECTOR_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, ide_drive_t *drive, u8 sub_cmd)
{
	u8 *buf;

	buf = FUNC2(SECTOR_SIZE, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	(void)FUNC5(drive);

	if (FUNC0(drive, buf, sub_cmd) == 0) {
		__le16 *val = (__le16 *)buf;
		int i;

		for (i = 0; i < SECTOR_SIZE / 2; i++) {
			FUNC4(m, "%04x%c", FUNC3(val[i]),
					(i % 8) == 7 ? '\n' : ' ');
		}
	}
	FUNC1(buf);
	return 0;
}