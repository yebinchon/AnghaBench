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
typedef  int u8 ;
struct nvkm_subdev {scalar_t__ debug; } ;
struct nvkm_mxm {struct nvkm_subdev subdev; } ;

/* Variables and functions */
 scalar_t__ NV_DBG_DEBUG ; 
 int FUNC0 (int) ; 
 int* FUNC1 (struct nvkm_mxm*) ; 
 int FUNC2 (struct nvkm_mxm*) ; 
 int FUNC3 (struct nvkm_mxm*) ; 
 int FUNC4 (struct nvkm_mxm*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

bool
FUNC7(struct nvkm_mxm *mxm, u8 types,
	     bool (*exec)(struct nvkm_mxm *, u8 *, void *), void *info)
{
	struct nvkm_subdev *subdev = &mxm->subdev;
	u8 *mxms = FUNC1(mxm);
	u8 *desc = mxms + FUNC2(mxm);
	u8 *fini = desc + FUNC3(mxm) - 1;
	while (desc < fini) {
		u8 type = desc[0] & 0x0f;
		u8 headerlen = 0;
		u8 recordlen = 0;
		u8 entries = 0;

		switch (type) {
		case 0: /* Output Device Structure */
			if (FUNC4(mxm) >= 0x0300)
				headerlen = 8;
			else
				headerlen = 6;
			break;
		case 1: /* System Cooling Capability Structure */
		case 2: /* Thermal Structure */
		case 3: /* Input Power Structure */
			headerlen = 4;
			break;
		case 4: /* GPIO Device Structure */
			headerlen = 4;
			recordlen = 2;
			entries   = (FUNC0(desc[0]) & 0x01f00000) >> 20;
			break;
		case 5: /* Vendor Specific Structure */
			headerlen = 8;
			break;
		case 6: /* Backlight Control Structure */
			if (FUNC4(mxm) >= 0x0300) {
				headerlen = 4;
				recordlen = 8;
				entries   = (desc[1] & 0xf0) >> 4;
			} else {
				headerlen = 8;
			}
			break;
		case 7: /* Fan Control Structure */
			headerlen = 8;
			recordlen = 4;
			entries   = desc[1] & 0x07;
			break;
		default:
			FUNC5(subdev, "unknown descriptor type %d\n", type);
			return false;
		}

		if (mxm->subdev.debug >= NV_DBG_DEBUG && (exec == NULL)) {
			static const char * mxms_desc[] = {
				"ODS", "SCCS", "TS", "IPS",
				"GSD", "VSS", "BCS", "FCS",
			};
			u8 *dump = desc;
			char data[32], *ptr;
			int i, j;

			for (j = headerlen - 1, ptr = data; j >= 0; j--)
				ptr += FUNC6(ptr, "%02x", dump[j]);
			dump += headerlen;

			FUNC5(subdev, "%4s: %s\n", mxms_desc[type], data);
			for (i = 0; i < entries; i++, dump += recordlen) {
				for (j = recordlen - 1, ptr = data; j >= 0; j--)
					ptr += FUNC6(ptr, "%02x", dump[j]);
				FUNC5(subdev, "      %s\n", data);
			}
		}

		if (types & (1 << type)) {
			if (!exec(mxm, desc, info))
				return false;
		}

		desc += headerlen + (entries * recordlen);
	}

	return true;
}