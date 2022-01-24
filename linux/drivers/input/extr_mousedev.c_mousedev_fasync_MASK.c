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
struct mousedev_client {int /*<<< orphan*/  fasync; } ;
struct file {struct mousedev_client* private_data; } ;

/* Variables and functions */
 int FUNC0 (int,struct file*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(int fd, struct file *file, int on)
{
	struct mousedev_client *client = file->private_data;

	return FUNC0(fd, file, on, &client->fasync);
}