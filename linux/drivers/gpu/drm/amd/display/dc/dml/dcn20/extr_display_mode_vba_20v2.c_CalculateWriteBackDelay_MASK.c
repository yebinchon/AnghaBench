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
typedef  enum source_format_class { ____Placeholder_source_format_class } source_format_class ;

/* Variables and functions */
 int dm_444_32 ; 
 int FUNC0 (unsigned int,int) ; 
 unsigned int FUNC1 (double,unsigned int) ; 

__attribute__((used)) static double FUNC2(
		enum source_format_class WritebackPixelFormat,
		double WritebackHRatio,
		double WritebackVRatio,
		unsigned int WritebackLumaHTaps,
		unsigned int WritebackLumaVTaps,
		unsigned int WritebackChromaHTaps,
		unsigned int WritebackChromaVTaps,
		unsigned int WritebackDestinationWidth)
{
	double CalculateWriteBackDelay =
			FUNC1(
					FUNC0(WritebackLumaHTaps / 4.0, 1) / WritebackHRatio,
					WritebackLumaVTaps * FUNC0(1.0 / WritebackVRatio, 1)
							* FUNC0(
									WritebackDestinationWidth
											/ 4.0,
									1)
							+ FUNC0(1.0 / WritebackVRatio, 1)
									* (FUNC0(
											WritebackLumaVTaps
													/ 4.0,
											1) + 4));

	if (WritebackPixelFormat != dm_444_32) {
		CalculateWriteBackDelay =
				FUNC1(
						CalculateWriteBackDelay,
						FUNC1(
								FUNC0(
										WritebackChromaHTaps
												/ 2.0,
										1)
										/ (2
												* WritebackHRatio),
								WritebackChromaVTaps
										* FUNC0(
												1
														/ (2
																* WritebackVRatio),
												1)
										* FUNC0(
												WritebackDestinationWidth
														/ 2.0
														/ 2.0,
												1)
										+ FUNC0(
												1
														/ (2
																* WritebackVRatio),
												1)
												* (FUNC0(
														WritebackChromaVTaps
																/ 4.0,
														1)
														+ 4)));
	}
	return CalculateWriteBackDelay;
}