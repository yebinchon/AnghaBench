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
struct iio_chan_spec {int dummy; } ;
struct adc12138 {int /*<<< orphan*/  complete; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (struct adc12138*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct adc12138*,struct iio_chan_spec const*) ; 
 int FUNC2 (struct adc12138*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct adc12138 *adc,
				   struct iio_chan_spec const *channel,
				   __be16 *value)
{
	int ret;

	FUNC4(&adc->complete);

	ret = FUNC1(adc, channel);
	if (ret)
		return ret;

	ret = FUNC2(adc, FUNC3(100));
	if (ret)
		return ret;

	return FUNC0(adc, value);
}