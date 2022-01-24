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
struct hsi_port {int (* async ) (struct hsi_msg*) ;} ;
struct hsi_msg {struct hsi_client* cl; int /*<<< orphan*/  complete; int /*<<< orphan*/  destructor; } ;
struct hsi_client {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct hsi_port* FUNC1 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct hsi_client*) ; 
 int FUNC3 (struct hsi_msg*) ; 

int FUNC4(struct hsi_client *cl, struct hsi_msg *msg)
{
	struct hsi_port *port = FUNC1(cl);

	if (!FUNC2(cl))
		return -EACCES;

	FUNC0(!msg->destructor || !msg->complete);
	msg->cl = cl;

	return port->async(msg);
}