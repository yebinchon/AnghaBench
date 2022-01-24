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
struct seq_file {struct omap_hdmi* private; } ;
struct omap_hdmi {int /*<<< orphan*/  lock; int /*<<< orphan*/  core; int /*<<< orphan*/  phy; int /*<<< orphan*/  pll; int /*<<< orphan*/  wp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct seq_file*) ; 
 scalar_t__ FUNC3 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct seq_file *s, void *p)
{
	struct omap_hdmi *hdmi = s->private;

	FUNC6(&hdmi->lock);

	if (FUNC3(hdmi)) {
		FUNC7(&hdmi->lock);
		return 0;
	}

	FUNC5(&hdmi->wp, s);
	FUNC2(&hdmi->pll, s);
	FUNC1(&hdmi->phy, s);
	FUNC0(&hdmi->core, s);

	FUNC4(hdmi);
	FUNC7(&hdmi->lock);
	return 0;
}