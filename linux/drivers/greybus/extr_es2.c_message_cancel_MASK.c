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
struct urb {int dummy; } ;
struct gb_message {struct urb* hcpriv; TYPE_2__* operation; } ;
struct gb_host_device {int dummy; } ;
struct es2_ap_dev {int* cport_out_urb_cancelled; int /*<<< orphan*/  cport_out_urb_lock; struct urb** cport_out_urb; } ;
struct TYPE_4__ {TYPE_1__* connection; } ;
struct TYPE_3__ {struct gb_host_device* hd; } ;

/* Variables and functions */
 int NUM_CPORT_OUT_URB ; 
 struct es2_ap_dev* FUNC0 (struct gb_host_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 

__attribute__((used)) static void FUNC7(struct gb_message *message)
{
	struct gb_host_device *hd = message->operation->connection->hd;
	struct es2_ap_dev *es2 = FUNC0(hd);
	struct urb *urb;
	int i;

	FUNC1();

	FUNC2(&es2->cport_out_urb_lock);
	urb = message->hcpriv;

	/* Prevent dynamically allocated urb from being deallocated. */
	FUNC5(urb);

	/* Prevent pre-allocated urb from being reused. */
	for (i = 0; i < NUM_CPORT_OUT_URB; ++i) {
		if (urb == es2->cport_out_urb[i]) {
			es2->cport_out_urb_cancelled[i] = true;
			break;
		}
	}
	FUNC3(&es2->cport_out_urb_lock);

	FUNC6(urb);

	if (i < NUM_CPORT_OUT_URB) {
		FUNC2(&es2->cport_out_urb_lock);
		es2->cport_out_urb_cancelled[i] = false;
		FUNC3(&es2->cport_out_urb_lock);
	}

	FUNC4(urb);
}