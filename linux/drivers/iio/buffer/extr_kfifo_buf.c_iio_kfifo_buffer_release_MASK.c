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
struct iio_kfifo {int /*<<< orphan*/  kf; int /*<<< orphan*/  user_lock; } ;
struct iio_buffer {int dummy; } ;

/* Variables and functions */
 struct iio_kfifo* FUNC0 (struct iio_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_kfifo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct iio_buffer *buffer)
{
	struct iio_kfifo *kf = FUNC0(buffer);

	FUNC3(&kf->user_lock);
	FUNC1(&kf->kf);
	FUNC2(kf);
}