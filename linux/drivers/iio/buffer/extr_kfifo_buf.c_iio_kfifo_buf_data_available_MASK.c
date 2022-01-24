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
struct iio_kfifo {int /*<<< orphan*/  user_lock; int /*<<< orphan*/  kf; } ;
struct iio_buffer {int dummy; } ;

/* Variables and functions */
 struct iio_kfifo* FUNC0 (struct iio_buffer*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC4(struct iio_buffer *r)
{
	struct iio_kfifo *kf = FUNC0(r);
	size_t samples;

	FUNC2(&kf->user_lock);
	samples = FUNC1(&kf->kf);
	FUNC3(&kf->user_lock);

	return samples;
}