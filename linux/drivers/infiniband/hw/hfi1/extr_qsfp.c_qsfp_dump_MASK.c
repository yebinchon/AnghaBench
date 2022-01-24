#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int* cache; scalar_t__ cache_valid; } ;
struct hfi1_pportdata {TYPE_1__ qsfp_info; } ;
typedef  int /*<<< orphan*/  lenstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 size_t QSFP_ATTEN_OFFS ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  QSFP_DATE_LEN ; 
 size_t QSFP_DATE_OFFS ; 
 int QSFP_DEFAULT_HDR_CNT ; 
 int QSFP_DUMP_CHUNK ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  QSFP_LOT_LEN ; 
 size_t QSFP_LOT_OFFS ; 
 size_t QSFP_MOD_LEN_OFFS ; 
 size_t QSFP_MOD_PWR_OFFS ; 
 size_t QSFP_MOD_TECH_OFFS ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  QSFP_PN_LEN ; 
 size_t QSFP_PN_OFFS ; 
 int /*<<< orphan*/  QSFP_REV_LEN ; 
 size_t QSFP_REV_OFFS ; 
 int /*<<< orphan*/  QSFP_SN_LEN ; 
 size_t QSFP_SN_OFFS ; 
 int /*<<< orphan*/  QSFP_VEND_LEN ; 
 size_t QSFP_VEND_OFFS ; 
 size_t QSFP_VOUI_OFFS ; 
 size_t FUNC4 (int) ; 
 int /*<<< orphan*/ * hfi1_qsfp_devtech ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/ * pwr_codes ; 
 scalar_t__ FUNC6 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

int FUNC8(struct hfi1_pportdata *ppd, char *buf, int len)
{
	u8 *cache = &ppd->qsfp_info.cache[0];
	u8 bin_buff[QSFP_DUMP_CHUNK];
	char lenstr[6];
	int sofar;
	int bidx = 0;
	u8 *atten = &cache[QSFP_ATTEN_OFFS];
	u8 *vendor_oui = &cache[QSFP_VOUI_OFFS];
	u8 power_byte = 0;

	sofar = 0;
	lenstr[0] = ' ';
	lenstr[1] = '\0';

	if (ppd->qsfp_info.cache_valid) {
		if (FUNC2(cache[QSFP_MOD_TECH_OFFS]))
			FUNC7(lenstr, sizeof(lenstr), "%dM ",
				 cache[QSFP_MOD_LEN_OFFS]);

		power_byte = cache[QSFP_MOD_PWR_OFFS];
		sofar += FUNC6(buf + sofar, len - sofar, "PWR:%.3sW\n",
				pwr_codes[FUNC4(power_byte)]);

		sofar += FUNC6(buf + sofar, len - sofar, "TECH:%s%s\n",
				lenstr,
			hfi1_qsfp_devtech[(cache[QSFP_MOD_TECH_OFFS]) >> 4]);

		sofar += FUNC6(buf + sofar, len - sofar, "Vendor:%.*s\n",
				   QSFP_VEND_LEN, &cache[QSFP_VEND_OFFS]);

		sofar += FUNC6(buf + sofar, len - sofar, "OUI:%06X\n",
				   FUNC3(vendor_oui));

		sofar += FUNC6(buf + sofar, len - sofar, "Part#:%.*s\n",
				   QSFP_PN_LEN, &cache[QSFP_PN_OFFS]);

		sofar += FUNC6(buf + sofar, len - sofar, "Rev:%.*s\n",
				   QSFP_REV_LEN, &cache[QSFP_REV_OFFS]);

		if (FUNC2(cache[QSFP_MOD_TECH_OFFS]))
			sofar += FUNC6(buf + sofar, len - sofar,
				"Atten:%d, %d\n",
				FUNC1(atten),
				FUNC0(atten));

		sofar += FUNC6(buf + sofar, len - sofar, "Serial:%.*s\n",
				   QSFP_SN_LEN, &cache[QSFP_SN_OFFS]);

		sofar += FUNC6(buf + sofar, len - sofar, "Date:%.*s\n",
				   QSFP_DATE_LEN, &cache[QSFP_DATE_OFFS]);

		sofar += FUNC6(buf + sofar, len - sofar, "Lot:%.*s\n",
				   QSFP_LOT_LEN, &cache[QSFP_LOT_OFFS]);

		while (bidx < QSFP_DEFAULT_HDR_CNT) {
			int iidx;

			FUNC5(bin_buff, &cache[bidx], QSFP_DUMP_CHUNK);
			for (iidx = 0; iidx < QSFP_DUMP_CHUNK; ++iidx) {
				sofar += FUNC6(buf + sofar, len - sofar,
					" %02X", bin_buff[iidx]);
			}
			sofar += FUNC6(buf + sofar, len - sofar, "\n");
			bidx += QSFP_DUMP_CHUNK;
		}
	}
	return sofar;
}