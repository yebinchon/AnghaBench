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
struct iio_chan_spec {int dummy; } ;
struct adc12138 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct adc12138*,struct iio_chan_spec const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(struct adc12138 *adc,
			       struct iio_chan_spec const *channel)
{
	u8 trash;

	return FUNC0(adc, channel, &trash, 1);
}