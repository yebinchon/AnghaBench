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
struct bma150_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bma150_data*) ; 
 struct bma150_data* FUNC1 (struct input_dev*) ; 

__attribute__((used)) static void FUNC2(struct input_dev *input)
{
	struct bma150_data *bma150 = FUNC1(input);

	FUNC0(bma150);
}