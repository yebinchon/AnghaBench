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
typedef  int /*<<< orphan*/  u64 ;
struct sec_queue {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ SEC_Q_ERR_BASE_HADDR_REG ; 
 scalar_t__ SEC_Q_ERR_BASE_LADDR_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sec_queue *queue, u64 addr)
{
	FUNC2(FUNC1(addr),
		       queue->regs + SEC_Q_ERR_BASE_HADDR_REG);
	FUNC2(FUNC0(addr),
		       queue->regs + SEC_Q_ERR_BASE_LADDR_REG);
}