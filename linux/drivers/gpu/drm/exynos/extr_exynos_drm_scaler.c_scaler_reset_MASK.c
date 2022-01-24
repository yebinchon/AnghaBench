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
struct scaler_context {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SCALER_CFG ; 
 int SCALER_CFG_SOFT_RESET ; 
 int /*<<< orphan*/  SCALER_INT_EN ; 
 int SCALER_RESET_WAIT_RETRIES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct scaler_context *scaler)
{
	int retry = SCALER_RESET_WAIT_RETRIES;

	FUNC2(SCALER_CFG_SOFT_RESET, SCALER_CFG);
	do {
		FUNC0();
	} while (--retry > 1 &&
		 FUNC1(SCALER_CFG) & SCALER_CFG_SOFT_RESET);
	do {
		FUNC0();
		FUNC2(1, SCALER_INT_EN);
	} while (--retry > 0 && FUNC1(SCALER_INT_EN) != 1);

	return retry ? 0 : -EIO;
}