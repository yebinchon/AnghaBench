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
struct bmp280_data {int /*<<< orphan*/  regmap; } ;
struct bmp180_calib {void* MD; void* MC; void* MB; void* B2; void* B1; void* AC6; void* AC5; void* AC4; void* AC3; void* AC2; void* AC1; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 size_t AC1 ; 
 size_t AC2 ; 
 size_t AC3 ; 
 size_t AC4 ; 
 size_t AC5 ; 
 size_t AC6 ; 
 int FUNC0 (scalar_t__*) ; 
 size_t B1 ; 
 size_t B2 ; 
 int BMP180_REG_CALIB_COUNT ; 
 int /*<<< orphan*/  BMP180_REG_CALIB_START ; 
 int EIO ; 
 size_t MB ; 
 size_t MC ; 
 size_t MD ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 void* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC5(struct bmp280_data *data,
			     struct bmp180_calib *calib)
{
	int ret;
	int i;
	__be16 buf[BMP180_REG_CALIB_COUNT / 2];

	ret = FUNC4(data->regmap, BMP180_REG_CALIB_START, buf,
			       sizeof(buf));

	if (ret < 0)
		return ret;

	/* None of the words has the value 0 or 0xFFFF */
	for (i = 0; i < FUNC0(buf); i++) {
		if (buf[i] == FUNC3(0) || buf[i] == FUNC3(0xffff))
			return -EIO;
	}

	/* Toss the calibration data into the entropy pool */
	FUNC1(buf, sizeof(buf));

	calib->AC1 = FUNC2(buf[AC1]);
	calib->AC2 = FUNC2(buf[AC2]);
	calib->AC3 = FUNC2(buf[AC3]);
	calib->AC4 = FUNC2(buf[AC4]);
	calib->AC5 = FUNC2(buf[AC5]);
	calib->AC6 = FUNC2(buf[AC6]);
	calib->B1 = FUNC2(buf[B1]);
	calib->B2 = FUNC2(buf[B2]);
	calib->MB = FUNC2(buf[MB]);
	calib->MC = FUNC2(buf[MC]);
	calib->MD = FUNC2(buf[MD]);

	return 0;
}