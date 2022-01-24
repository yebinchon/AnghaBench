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
typedef  int /*<<< orphan*/  u32 ;
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int IBSD_RESYNC_TRIES ; 
 int /*<<< orphan*/  IB_7220_SERDES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,char*,...) ; 
 int FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct qib_devdata *dd)
{
	int ret, pat, tries, chn;
	u32 loc;

	ret = -1;
	chn = 0;
	for (tries = 0; tries < (4 * IBSD_RESYNC_TRIES); ++tries) {
		loc = FUNC1(chn);
		ret = FUNC3(dd, IB_7220_SERDES, loc, 0, 0);
		if (ret < 0) {
			FUNC2(dd, "Failed read in resync\n");
			continue;
		}
		if (ret != 0xF0 && ret != 0x55 && tries == 0)
			FUNC2(dd, "unexpected pattern in resync\n");
		pat = ret ^ 0xA5; /* alternate F0 and 55 */
		ret = FUNC3(dd, IB_7220_SERDES, loc, pat, 0xFF);
		if (ret < 0) {
			FUNC2(dd, "Failed write in resync\n");
			continue;
		}
		ret = FUNC3(dd, IB_7220_SERDES, loc, 0, 0);
		if (ret < 0) {
			FUNC2(dd, "Failed re-read in resync\n");
			continue;
		}
		if (ret != pat) {
			FUNC2(dd, "Failed compare1 in resync\n");
			continue;
		}
		loc = FUNC0(chn);
		ret = FUNC3(dd, IB_7220_SERDES, loc, 0, 0);
		if (ret < 0) {
			FUNC2(dd, "Failed CMUDONE rd in resync\n");
			continue;
		}
		if ((ret & 0x70) != ((chn << 4) | 0x40)) {
			FUNC2(dd, "Bad CMUDONE value %02X, chn %d\n",
				    ret, chn);
			continue;
		}
		if (++chn == 4)
			break;  /* Success */
	}
	return (ret > 0) ? 0 : ret;
}