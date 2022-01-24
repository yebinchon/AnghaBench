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
struct tegra_bpmp {int /*<<< orphan*/ * debugfs_mirror; } ;
struct seqbuf {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct tegra_bpmp*,struct seqbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seqbuf*,void*,size_t) ; 

__attribute__((used)) static int FUNC4(struct tegra_bpmp *bpmp, void *buf,
				 size_t bufsize, struct dentry *root)
{
	struct seqbuf seqbuf;
	int err;

	bpmp->debugfs_mirror = FUNC1("debug", root);
	if (!bpmp->debugfs_mirror)
		return -ENOMEM;

	FUNC3(&seqbuf, buf, bufsize);
	err = FUNC0(bpmp, &seqbuf, bpmp->debugfs_mirror, 0);
	if (err < 0) {
		FUNC2(bpmp->debugfs_mirror);
		bpmp->debugfs_mirror = NULL;
	}

	return err;
}