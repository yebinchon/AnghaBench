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
struct iqs5xx_private {int /*<<< orphan*/  client; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IQS5XX_RESUME ; 
 struct iqs5xx_private* FUNC0 (struct input_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct input_dev *input)
{
	struct iqs5xx_private *iqs5xx = FUNC0(input);

	return FUNC1(iqs5xx->client, IQS5XX_RESUME);
}