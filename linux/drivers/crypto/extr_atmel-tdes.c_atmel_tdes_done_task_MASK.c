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
struct atmel_tdes_dev {int flags; int err; void* out_sg; void* in_sg; scalar_t__ total; } ;

/* Variables and functions */
 int EINVAL ; 
 int TDES_FLAGS_DMA ; 
 int TDES_FLAGS_FAST ; 
 int FUNC0 (struct atmel_tdes_dev*) ; 
 int FUNC1 (struct atmel_tdes_dev*) ; 
 int FUNC2 (struct atmel_tdes_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_tdes_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_tdes_dev*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (void*) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	struct atmel_tdes_dev *dd = (struct atmel_tdes_dev *) data;
	int err;

	if (!(dd->flags & TDES_FLAGS_DMA))
		err = FUNC1(dd);
	else
		err = FUNC0(dd);

	err = dd->err ? : err;

	if (dd->total && !err) {
		if (dd->flags & TDES_FLAGS_FAST) {
			dd->in_sg = FUNC5(dd->in_sg);
			dd->out_sg = FUNC5(dd->out_sg);
			if (!dd->in_sg || !dd->out_sg)
				err = -EINVAL;
		}
		if (!err)
			err = FUNC2(dd);
		if (!err)
			return; /* DMA started. Not fininishing. */
	}

	FUNC3(dd, err);
	FUNC4(dd, NULL);
}