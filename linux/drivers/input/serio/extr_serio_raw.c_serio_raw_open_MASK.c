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
struct serio_raw_client {int /*<<< orphan*/  node; struct serio_raw* serio_raw; } ;
struct serio_raw {int /*<<< orphan*/  serio; int /*<<< orphan*/  client_list; int /*<<< orphan*/  kref; scalar_t__ dead; } ;
struct inode {int dummy; } ;
struct file {struct serio_raw_client* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct serio_raw_client* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct serio_raw* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  serio_raw_mutex ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct serio_raw *serio_raw;
	struct serio_raw_client *client;
	int retval;

	retval = FUNC4(&serio_raw_mutex);
	if (retval)
		return retval;

	serio_raw = FUNC8(FUNC0(inode));
	if (!serio_raw) {
		retval = -ENODEV;
		goto out;
	}

	if (serio_raw->dead) {
		retval = -ENODEV;
		goto out;
	}

	client = FUNC2(sizeof(struct serio_raw_client), GFP_KERNEL);
	if (!client) {
		retval = -ENOMEM;
		goto out;
	}

	client->serio_raw = serio_raw;
	file->private_data = client;

	FUNC1(&serio_raw->kref);

	FUNC7(serio_raw->serio);
	FUNC3(&client->node, &serio_raw->client_list);
	FUNC6(serio_raw->serio);

out:
	FUNC5(&serio_raw_mutex);
	return retval;
}