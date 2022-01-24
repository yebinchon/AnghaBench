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
struct qce_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_CONFIG ; 
 int /*<<< orphan*/  REG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct qce_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qce_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qce_device *qce)
{
	u32 config;

	/* get big endianness */
	config = FUNC0(qce, 0);

	/* clear status */
	FUNC1(qce, REG_STATUS, 0);
	FUNC1(qce, REG_CONFIG, config);
}