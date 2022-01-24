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
struct scaler_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCALER_TIMEOUT_CTRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  SCALER_TIMEOUT_CTRL_TIMER_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct scaler_context *scaler,
	unsigned int timer, unsigned int divider)
{
	u32 val;

	val = SCALER_TIMEOUT_CTRL_TIMER_ENABLE;
	val |= FUNC1(timer);
	val |= FUNC0(divider);
	FUNC2(val, SCALER_TIMEOUT_CTRL);
}