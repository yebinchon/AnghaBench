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
typedef  int u32 ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOVERFLOW ; 
#define  SI1133_ERR_INVALID_CMD 131 
#define  SI1133_ERR_INVALID_LOCATION_CMD 130 
#define  SI1133_ERR_OUTPUT_BUFFER_OVERFLOW 129 
#define  SI1133_ERR_SATURATION_ADC_OR_OVERFLOW_ACCUMULATION 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct device *dev, u32 resp, u8 cmd)
{
	resp &= 0xF;

	switch (resp) {
	case SI1133_ERR_OUTPUT_BUFFER_OVERFLOW:
		FUNC0(dev, "Output buffer overflow: %#02hhx\n", cmd);
		return -EOVERFLOW;
	case SI1133_ERR_SATURATION_ADC_OR_OVERFLOW_ACCUMULATION:
		FUNC0(dev, "Saturation of the ADC or overflow of accumulation: %#02hhx\n",
			 cmd);
		return -EOVERFLOW;
	case SI1133_ERR_INVALID_LOCATION_CMD:
		FUNC0(dev,
			 "Parameter access to an invalid location: %#02hhx\n",
			 cmd);
		return -EINVAL;
	case SI1133_ERR_INVALID_CMD:
		FUNC0(dev, "Invalid command %#02hhx\n", cmd);
		return -EINVAL;
	default:
		FUNC0(dev, "Unknown error %#02hhx\n", cmd);
		return -EINVAL;
	}
}