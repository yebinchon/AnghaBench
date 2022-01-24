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
struct occ_client {int /*<<< orphan*/  lock; struct occ* occ; int /*<<< orphan*/ * buffer; } ;
struct occ {int dummy; } ;
struct miscdevice {int /*<<< orphan*/  lock; struct occ* occ; int /*<<< orphan*/ * buffer; } ;
struct inode {int dummy; } ;
struct file {struct occ_client* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ OCC_CMD_DATA_BYTES ; 
 scalar_t__ OCC_RESP_DATA_BYTES ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct occ_client*) ; 
 struct occ_client* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct occ* FUNC5 (struct occ_client*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct occ_client *client = FUNC3(sizeof(*client), GFP_KERNEL);
	struct miscdevice *mdev = file->private_data;
	struct occ *occ = FUNC5(mdev);

	if (!client)
		return -ENOMEM;

	client->buffer = (u8 *)FUNC1(GFP_KERNEL);
	if (!client->buffer) {
		FUNC2(client);
		return -ENOMEM;
	}

	client->occ = occ;
	FUNC4(&client->lock);
	file->private_data = client;

	/* We allocate a 1-page buffer, make sure it all fits */
	FUNC0((OCC_CMD_DATA_BYTES + 3) > PAGE_SIZE);
	FUNC0((OCC_RESP_DATA_BYTES + 7) > PAGE_SIZE);

	return 0;
}