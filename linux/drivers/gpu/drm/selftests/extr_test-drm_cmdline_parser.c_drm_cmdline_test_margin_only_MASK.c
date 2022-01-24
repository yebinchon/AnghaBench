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
struct drm_cmdline_mode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,struct drm_cmdline_mode*) ; 
 int /*<<< orphan*/  no_connector ; 

__attribute__((used)) static int FUNC2(void *ignored)
{
	struct drm_cmdline_mode mode = { };

	FUNC0(FUNC1("m",
							  &no_connector,
							  &mode));

	return 0;
}