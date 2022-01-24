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
typedef  int /*<<< orphan*/  u8 ;
struct lm8333 {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM8333_READ_RETRIES ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(struct lm8333 *lm8333, u8 cmd, u8 len, u8 *buf)
{
	int retries = 0, ret;

	do {
		ret = FUNC0(lm8333->client,
						    cmd, len, buf);
	} while (ret < 0 && retries++ < LM8333_READ_RETRIES);

	return ret;
}