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
struct omap_hdmi {int /*<<< orphan*/  lock; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct omap_hdmi *hdmi, u8 *buf, int len)
{
	int r;

	FUNC4(&hdmi->lock);

	r = FUNC2(hdmi);
	FUNC0(r);

	r = FUNC1(&hdmi->core,  buf, len);

	FUNC3(hdmi);
	FUNC5(&hdmi->lock);

	return r;
}