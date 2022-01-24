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
struct seq_file {struct dss_device* private; } ;
struct dss_device {int /*<<< orphan*/  dispc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct dss_device*,struct seq_file*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *s, void *p)
{
	struct dss_device *dss = s->private;

	FUNC1(dss, s);
	FUNC0(dss->dispc, s);
	return 0;
}