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
struct input_dev {int dummy; } ;
struct alps_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int INPUT_MT_DROP_UNUSED ; 
 int INPUT_MT_POINTER ; 
 int INPUT_MT_SEMI_MT ; 
 int /*<<< orphan*/  MAX_TOUCHES ; 
 int /*<<< orphan*/  FUNC0 (struct alps_data*,struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct alps_data *priv,
					struct input_dev *dev1)
{
	FUNC0(priv, dev1);
	FUNC2(dev1, ABS_PRESSURE, 0, 127, 0, 0);

	FUNC1(dev1, MAX_TOUCHES,
			    INPUT_MT_POINTER | INPUT_MT_DROP_UNUSED |
				INPUT_MT_SEMI_MT);
}