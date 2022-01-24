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
typedef  int /*<<< orphan*/  u32 ;
struct altera_mbox {scalar_t__ mbox_base; } ;

/* Variables and functions */
 scalar_t__ MAILBOX_STS_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline int FUNC2(struct altera_mbox *mbox)
{
	u32 status;

	status = FUNC1(mbox->mbox_base + MAILBOX_STS_REG);
	return FUNC0(status);
}