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
struct iio_buffer {int length; int /*<<< orphan*/ * access; } ;
struct iio_kfifo {int update_needed; struct iio_buffer buffer; int /*<<< orphan*/  user_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct iio_buffer*) ; 
 int /*<<< orphan*/  kfifo_access_funcs ; 
 struct iio_kfifo* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct iio_buffer *FUNC3(void)
{
	struct iio_kfifo *kf;

	kf = FUNC1(sizeof(*kf), GFP_KERNEL);
	if (!kf)
		return NULL;

	kf->update_needed = true;
	FUNC0(&kf->buffer);
	kf->buffer.access = &kfifo_access_funcs;
	kf->buffer.length = 2;
	FUNC2(&kf->user_lock);

	return &kf->buffer;
}