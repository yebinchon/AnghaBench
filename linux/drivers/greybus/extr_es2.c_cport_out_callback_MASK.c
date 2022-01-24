#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb {struct gb_message* context; } ;
struct gb_message {int /*<<< orphan*/ * hcpriv; int /*<<< orphan*/  header; TYPE_2__* operation; } ;
struct gb_host_device {int dummy; } ;
struct es2_ap_dev {int /*<<< orphan*/  cport_out_urb_lock; } ;
struct TYPE_4__ {TYPE_1__* connection; } ;
struct TYPE_3__ {struct gb_host_device* hd; } ;

/* Variables and functions */
 int FUNC0 (struct urb*) ; 
 int /*<<< orphan*/  FUNC1 (struct es2_ap_dev*,struct urb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_host_device*,struct gb_message*,int) ; 
 struct es2_ap_dev* FUNC4 (struct gb_host_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct urb *urb)
{
	struct gb_message *message = urb->context;
	struct gb_host_device *hd = message->operation->connection->hd;
	struct es2_ap_dev *es2 = FUNC4(hd);
	int status = FUNC0(urb);
	unsigned long flags;

	FUNC2(message->header);

	FUNC5(&es2->cport_out_urb_lock, flags);
	message->hcpriv = NULL;
	FUNC6(&es2->cport_out_urb_lock, flags);

	/*
	 * Tell the submitter that the message send (attempt) is
	 * complete, and report the status.
	 */
	FUNC3(hd, message, status);

	FUNC1(es2, urb);
}