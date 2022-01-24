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
struct iio_trigger {int dummy; } ;
struct adis {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct adis*,int) ; 
 struct adis* FUNC1 (struct iio_trigger*) ; 

__attribute__((used)) static int FUNC2(struct iio_trigger *trig,
						bool state)
{
	struct adis *adis = FUNC1(trig);

	return FUNC0(adis, state);
}