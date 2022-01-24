#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  node; } ;
struct sync_file {TYPE_1__ cb; int /*<<< orphan*/  wq; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,struct sync_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sync_file*) ; 
 struct sync_file* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sync_file_fops ; 

__attribute__((used)) static struct sync_file *FUNC6(void)
{
	struct sync_file *sync_file;

	sync_file = FUNC5(sizeof(*sync_file), GFP_KERNEL);
	if (!sync_file)
		return NULL;

	sync_file->file = FUNC2("sync_file", &sync_file_fops,
					     sync_file, 0);
	if (FUNC1(sync_file->file))
		goto err;

	FUNC3(&sync_file->wq);

	FUNC0(&sync_file->cb.node);

	return sync_file;

err:
	FUNC4(sync_file);
	return NULL;
}