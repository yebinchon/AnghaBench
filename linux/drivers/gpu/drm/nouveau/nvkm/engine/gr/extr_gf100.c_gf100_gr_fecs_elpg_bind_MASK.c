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
struct gf100_gr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct gf100_gr*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct gf100_gr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gf100_gr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct gf100_gr *gr)
{
	u32 size;
	int ret;

	ret = FUNC0(gr, &size);
	if (ret)
		return ret;

	/*XXX: We need to allocate + map the above into PMU's inst block,
	 *     which which means we probably need a proper PMU before we
	 *     even bother.
	 */

	ret = FUNC1(gr, 0);
	if (ret)
		return ret;

	return FUNC2(gr, 0);
}