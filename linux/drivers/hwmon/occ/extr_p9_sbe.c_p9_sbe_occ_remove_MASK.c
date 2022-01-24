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
struct platform_device {int dummy; } ;
struct p9_sbe_occ {int /*<<< orphan*/ * sbe; } ;
struct occ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct occ*) ; 
 struct occ* FUNC1 (struct platform_device*) ; 
 struct p9_sbe_occ* FUNC2 (struct occ*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct occ *occ = FUNC1(pdev);
	struct p9_sbe_occ *ctx = FUNC2(occ);

	ctx->sbe = NULL;
	FUNC0(occ);

	return 0;
}