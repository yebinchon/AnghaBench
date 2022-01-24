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
struct inode {int dummy; } ;
struct file {struct dm_file* private_data; } ;
struct dm_file {int /*<<< orphan*/  global_event_nr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dm_global_event_nr ; 
 struct dm_file* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct file*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filp)
{
	int r;
	struct dm_file *priv;

	r = FUNC2(inode, filp);
	if (FUNC3(r))
		return r;

	priv = filp->private_data = FUNC1(sizeof(struct dm_file), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->global_event_nr = FUNC0(&dm_global_event_nr);

	return 0;
}