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
struct bu21029_ts_data {int /*<<< orphan*/  timer; int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  BU21029_AUTOSCAN ; 
 int BUF_LEN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  PEN_UP_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (struct bu21029_ts_data*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct bu21029_ts_data *bu21029 = data;
	u8 buf[BUF_LEN];
	int error;

	/*
	 * Read touch data and deassert interrupt (will assert again after
	 * INTVL_TIME + tConv4 for continuous touch)
	 */
	error = FUNC1(bu21029->client, BU21029_AUTOSCAN,
					      sizeof(buf), buf);
	if (error < 0)
		goto out;

	FUNC0(bu21029, buf);

	/* reset timer for pen up detection */
	FUNC2(&bu21029->timer,
		  jiffies + FUNC3(PEN_UP_TIMEOUT_MS));

out:
	return IRQ_HANDLED;
}