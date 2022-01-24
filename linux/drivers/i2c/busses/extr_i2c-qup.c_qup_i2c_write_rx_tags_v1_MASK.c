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
typedef  int u32 ;
struct qup_i2c_dev {scalar_t__ base; struct i2c_msg* msg; } ;
struct i2c_msg {scalar_t__ len; } ;

/* Variables and functions */
 int QUP_MSW_SHIFT ; 
 scalar_t__ QUP_OUT_FIFO_BASE ; 
 scalar_t__ QUP_READ_LIMIT ; 
 int QUP_TAG_REC ; 
 int QUP_TAG_START ; 
 int FUNC0 (struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct qup_i2c_dev *qup)
{
	struct i2c_msg *msg = qup->msg;
	u32 addr, len, val;

	addr = FUNC0(msg);

	/* 0 is used to specify a length 256 (QUP_READ_LIMIT) */
	len = (msg->len == QUP_READ_LIMIT) ? 0 : msg->len;

	val = ((QUP_TAG_REC | len) << QUP_MSW_SHIFT) | QUP_TAG_START | addr;
	FUNC1(val, qup->base + QUP_OUT_FIFO_BASE);
}