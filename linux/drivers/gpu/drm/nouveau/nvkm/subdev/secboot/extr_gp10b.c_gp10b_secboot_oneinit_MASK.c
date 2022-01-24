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
struct nvkm_secboot {int dummy; } ;
struct gm200_secboot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA186_MC_BASE ; 
 struct gm200_secboot* FUNC0 (struct nvkm_secboot*) ; 
 int FUNC1 (struct nvkm_secboot*) ; 
 int FUNC2 (struct gm200_secboot*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_secboot *sb)
{
	struct gm200_secboot *gsb = FUNC0(sb);
	int ret;

	ret = FUNC2(gsb, TEGRA186_MC_BASE);
	if (ret)
		return ret;

	return FUNC1(sb);
}