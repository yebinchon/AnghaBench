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
struct wacom_remote {int /*<<< orphan*/  remote_fifo; int /*<<< orphan*/  remote_dir; } ;
struct wacom {struct wacom_remote* remote; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *data)
{
	struct wacom *wacom = data;
	struct wacom_remote *remote = wacom->remote;

	if (!remote)
		return;

	FUNC1(remote->remote_dir);
	FUNC0(&remote->remote_fifo);
	wacom->remote = NULL;
}