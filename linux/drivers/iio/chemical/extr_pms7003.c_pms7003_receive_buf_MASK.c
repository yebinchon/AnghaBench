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
typedef  scalar_t__ u16 ;
struct serdev_device {int dummy; } ;
struct pms7003_frame {int expected_length; int length; scalar_t__ data; } ;
struct pms7003_state {int /*<<< orphan*/  frame_ready; struct pms7003_frame frame; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ PMS7003_MAGIC ; 
 int PMS7003_MAX_DATA_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (unsigned char const*) ; 
 struct pms7003_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned char const*,int) ; 
 int FUNC4 (size_t,size_t) ; 
 scalar_t__ FUNC5 (struct pms7003_frame*) ; 
 struct iio_dev* FUNC6 (struct serdev_device*) ; 

__attribute__((used)) static int FUNC7(struct serdev_device *serdev,
			       const unsigned char *buf, size_t size)
{
	struct iio_dev *indio_dev = FUNC6(serdev);
	struct pms7003_state *state = FUNC2(indio_dev);
	struct pms7003_frame *frame = &state->frame;
	int num;

	if (!frame->expected_length) {
		u16 magic;

		/* wait for SOF and data length */
		if (size < 4)
			return 0;

		magic = FUNC1(buf);
		if (magic != PMS7003_MAGIC)
			return 2;

		num = FUNC1(buf + 2);
		if (num <= PMS7003_MAX_DATA_LENGTH) {
			frame->expected_length = num;
			frame->length = 0;
		}

		return 4;
	}

	num = FUNC4(size, (size_t)(frame->expected_length - frame->length));
	FUNC3(frame->data + frame->length, buf, num);
	frame->length += num;

	if (frame->length == frame->expected_length) {
		if (FUNC5(frame))
			FUNC0(&state->frame_ready);

		frame->expected_length = 0;
	}

	return num;
}