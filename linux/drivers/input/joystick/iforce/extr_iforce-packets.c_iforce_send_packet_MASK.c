#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_5__ {int head; int tail; void** buf; } ;
struct iforce {TYPE_3__* xport_ops; int /*<<< orphan*/  xmit_lock; TYPE_2__ xmit; TYPE_1__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* xmit ) (struct iforce*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (void**,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct iforce*) ; 

int FUNC10(struct iforce *iforce, u16 cmd, unsigned char* data)
{
	/* Copy data to buffer */
	int n = FUNC3(cmd);
	int c;
	int empty;
	int head, tail;
	unsigned long flags;

/*
 * Update head and tail of xmit buffer
 */
	FUNC7(&iforce->xmit_lock, flags);

	head = iforce->xmit.head;
	tail = iforce->xmit.tail;


	if (FUNC0(head, tail, XMIT_SIZE) < n+2) {
		FUNC5(&iforce->dev->dev,
			 "not enough space in xmit buffer to send new packet\n");
		FUNC8(&iforce->xmit_lock, flags);
		return -1;
	}

	empty = head == tail;
	FUNC4(iforce->xmit.head, n+2);

/*
 * Store packet in xmit buffer
 */
	iforce->xmit.buf[head] = FUNC2(cmd);
	FUNC4(head, 1);
	iforce->xmit.buf[head] = FUNC3(cmd);
	FUNC4(head, 1);

	c = FUNC1(head, tail, XMIT_SIZE);
	if (n < c) c=n;

	FUNC6(&iforce->xmit.buf[head],
	       data,
	       c);
	if (n != c) {
		FUNC6(&iforce->xmit.buf[0],
		       data + c,
		       n - c);
	}
	FUNC4(head, n);

	FUNC8(&iforce->xmit_lock, flags);
/*
 * If necessary, start the transmission
 */
	if (empty)
		iforce->xport_ops->xmit(iforce);

	return 0;
}