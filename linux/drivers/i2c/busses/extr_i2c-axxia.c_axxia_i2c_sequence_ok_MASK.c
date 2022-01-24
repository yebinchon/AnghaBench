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
struct i2c_msg {scalar_t__ len; scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ FIFO_SIZE ; 
 int SEQ_LEN ; 
 scalar_t__ FUNC0 (struct i2c_msg*) ; 

__attribute__((used)) static bool FUNC1(struct i2c_msg msgs[], int num)
{
	return num == SEQ_LEN && !FUNC0(&msgs[0]) && FUNC0(&msgs[1]) &&
	       msgs[0].len > 0 && msgs[0].len <= FIFO_SIZE &&
	       msgs[1].len > 0 && msgs[0].addr == msgs[1].addr;
}