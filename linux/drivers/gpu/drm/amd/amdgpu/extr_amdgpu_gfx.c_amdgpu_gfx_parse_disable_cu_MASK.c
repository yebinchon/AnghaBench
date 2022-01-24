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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int,unsigned int) ; 
 char* amdgpu_disable_cu ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,char*,unsigned int*,unsigned int*,unsigned int*) ; 
 char* FUNC4 (char const*,char) ; 

void FUNC5(unsigned *mask, unsigned max_se, unsigned max_sh)
{
	unsigned se, sh, cu;
	const char *p;

	FUNC2(mask, 0, sizeof(*mask) * max_se * max_sh);

	if (!amdgpu_disable_cu || !*amdgpu_disable_cu)
		return;

	p = amdgpu_disable_cu;
	for (;;) {
		char *next;
		int ret = FUNC3(p, "%u.%u.%u", &se, &sh, &cu);
		if (ret < 3) {
			FUNC0("amdgpu: could not parse disable_cu\n");
			return;
		}

		if (se < max_se && sh < max_sh && cu < 16) {
			FUNC1("amdgpu: disabling CU %u.%u.%u\n", se, sh, cu);
			mask[se * max_sh + sh] |= 1u << cu;
		} else {
			FUNC0("amdgpu: disable_cu %u.%u.%u is out of range\n",
				  se, sh, cu);
		}

		next = FUNC4(p, ',');
		if (!next)
			break;
		p = next + 1;
	}
}