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
struct timespec64 {int dummy; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CLOCK_BOOTTIME 134 
#define  CLOCK_MONOTONIC 133 
#define  CLOCK_MONOTONIC_COARSE 132 
#define  CLOCK_MONOTONIC_RAW 131 
#define  CLOCK_REALTIME 130 
#define  CLOCK_REALTIME_COARSE 129 
#define  CLOCK_TAI 128 
 int FUNC1 (struct iio_dev const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct timespec64*) ; 

s64 FUNC11(const struct iio_dev *indio_dev)
{
	struct timespec64 tp;

	switch (FUNC1(indio_dev)) {
	case CLOCK_REALTIME:
		return FUNC8();
	case CLOCK_MONOTONIC:
		return FUNC6();
	case CLOCK_MONOTONIC_RAW:
		return FUNC7();
	case CLOCK_REALTIME_COARSE:
		return FUNC9(FUNC4());
	case CLOCK_MONOTONIC_COARSE:
		FUNC5(&tp);
		return FUNC10(&tp);
	case CLOCK_BOOTTIME:
		return FUNC2();
	case CLOCK_TAI:
		return FUNC3();
	default:
		FUNC0();
	}
}