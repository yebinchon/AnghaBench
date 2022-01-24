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
struct va_format {int dummy; } ;
struct drm_printer {int /*<<< orphan*/  arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct va_format*) ; 

void FUNC1(struct drm_printer *p, struct va_format *vaf)
{
	FUNC0(p->arg, "%pV", vaf);
}