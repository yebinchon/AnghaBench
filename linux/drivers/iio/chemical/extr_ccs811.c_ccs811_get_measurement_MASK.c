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
struct ccs811_data {int /*<<< orphan*/  buffer; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCS811_ALG_RESULT_DATA ; 
 int /*<<< orphan*/  CCS811_STATUS ; 
 int CCS811_STATUS_DATA_READY ; 
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ccs811_data *data)
{
	int ret, tries = 11;

	/* Maximum waiting time: 1s, as measurements are made every second */
	while (tries-- > 0) {
		ret = FUNC0(data->client, CCS811_STATUS);
		if (ret < 0)
			return ret;

		if ((ret & CCS811_STATUS_DATA_READY) || tries == 0)
			break;
		FUNC2(100);
	}
	if (!(ret & CCS811_STATUS_DATA_READY))
		return -EIO;

	return FUNC1(data->client,
					    CCS811_ALG_RESULT_DATA, 8,
					    (char *)&data->buffer);
}