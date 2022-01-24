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
struct pcilynx {int /*<<< orphan*/  client_list_lock; } ;
struct inode {int dummy; } ;
struct file {struct client* private_data; } ;
struct client {int /*<<< orphan*/  buffer; int /*<<< orphan*/  link; struct pcilynx* lynx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pcilynx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct inode *inode, struct file *file)
{
	struct client *client = file->private_data;
	struct pcilynx *lynx = client->lynx;

	FUNC4(&lynx->client_list_lock);
	FUNC1(&client->link);
	FUNC5(&lynx->client_list_lock);

	FUNC3(&client->buffer);
	FUNC0(client);
	FUNC2(lynx);

	return 0;
}