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
struct tsc2007 {int dummy; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct tsc2007* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct tsc2007*) ; 

__attribute__((used)) static void FUNC2(struct input_dev *input_dev)
{
	struct tsc2007 *ts = FUNC0(input_dev);

	FUNC1(ts);
}