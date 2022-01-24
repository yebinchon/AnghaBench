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
struct omap_dss_device {int /*<<< orphan*/  next; int /*<<< orphan*/  dss; } ;
struct dpi_data {int dummy; } ;

/* Variables and functions */
 struct dpi_data* FUNC0 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dpi_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct omap_dss_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct omap_dss_device *src,
		       struct omap_dss_device *dst)
{
	struct dpi_data *dpi = FUNC0(dst);

	FUNC1(dpi);

	return FUNC2(dst->dss, dst, dst->next);
}