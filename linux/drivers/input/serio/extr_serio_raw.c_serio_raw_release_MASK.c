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
struct serio_raw {int /*<<< orphan*/  kref; int /*<<< orphan*/  serio; } ;
struct inode {int dummy; } ;
struct file {struct serio_raw_client* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct serio_raw_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  serio_raw_free ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct serio_raw_client *client = file->private_data;
	struct serio_raw *serio_raw = client->serio_raw;

	FUNC4(serio_raw->serio);
	FUNC2(&client->node);
	FUNC3(serio_raw->serio);

	FUNC0(client);

	FUNC1(&serio_raw->kref, serio_raw_free);

	return 0;
}