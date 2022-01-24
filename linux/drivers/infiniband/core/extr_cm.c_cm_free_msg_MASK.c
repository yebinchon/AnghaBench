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
struct ib_mad_send_buf {scalar_t__* context; scalar_t__ ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ib_mad_send_buf *msg)
{
	if (msg->ah)
		FUNC2(msg->ah, 0);
	if (msg->context[0])
		FUNC0(msg->context[0]);
	FUNC1(msg);
}