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
struct tmp007_data {int /*<<< orphan*/  client; } ;
typedef  int s32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TMP007_STATUS ; 
 int TMP007_STATUS_CONV_READY ; 
 int TMP007_STATUS_DATA_VALID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct tmp007_data *data, u8 reg)
{
	s32 ret;
	int tries = 50;

	while (tries-- > 0) {
		ret = FUNC0(data->client,
			TMP007_STATUS);
		if (ret < 0)
			return ret;
		if ((ret & TMP007_STATUS_CONV_READY) &&
			!(ret & TMP007_STATUS_DATA_VALID))
				break;
		FUNC1(100);
	}

	if (tries < 0)
		return -EIO;

	return FUNC0(data->client, reg);
}