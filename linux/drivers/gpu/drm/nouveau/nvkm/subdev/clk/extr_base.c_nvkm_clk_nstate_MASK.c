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
struct nvkm_clk {scalar_t__ allow_reclock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,long*) ; 
 int FUNC1 (struct nvkm_clk*,long) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_clk *clk, const char *mode, int arglen)
{
	int ret = 1;

	if (clk->allow_reclock && !FUNC2(mode, "auto", arglen))
		return -2;

	if (FUNC2(mode, "disabled", arglen)) {
		char save = mode[arglen];
		long v;

		((char *)mode)[arglen] = '\0';
		if (!FUNC0(mode, 0, &v)) {
			ret = FUNC1(clk, v);
			if (ret < 0)
				ret = 1;
		}
		((char *)mode)[arglen] = save;
	}

	return ret - 2;
}