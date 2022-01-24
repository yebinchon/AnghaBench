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
typedef  int u64 ;
typedef  int u32 ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;
struct amd_iommu {TYPE_1__ iommu; } ;

/* Variables and functions */
 int volatile EVENT_DEVID_MASK ; 
 int volatile EVENT_DEVID_SHIFT ; 
 int volatile EVENT_DOMID_MASK_HI ; 
 int volatile EVENT_DOMID_MASK_LO ; 
 int volatile EVENT_FLAGS_MASK ; 
 int volatile EVENT_FLAGS_SHIFT ; 
#define  EVENT_TYPE_CMD_HARD_ERR 135 
#define  EVENT_TYPE_DEV_TAB_ERR 134 
#define  EVENT_TYPE_ILL_CMD 133 
#define  EVENT_TYPE_ILL_DEV 132 
#define  EVENT_TYPE_INV_DEV_REQ 131 
#define  EVENT_TYPE_INV_PPR_REQ 130 
#define  EVENT_TYPE_IOTLB_INV_TO 129 
 int EVENT_TYPE_IO_FAULT ; 
 int volatile EVENT_TYPE_MASK ; 
#define  EVENT_TYPE_PAGE_TAB_ERR 128 
 int volatile EVENT_TYPE_SHIFT ; 
 int LOOP_TIMEOUT ; 
 int volatile FUNC0 (int) ; 
 int volatile FUNC1 (int) ; 
 int volatile FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int volatile,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct amd_iommu *iommu, void *__evt)
{
	struct device *dev = iommu->iommu.dev;
	int type, devid, pasid, flags, tag;
	volatile u32 *event = __evt;
	int count = 0;
	u64 address;

retry:
	type    = (event[1] >> EVENT_TYPE_SHIFT)  & EVENT_TYPE_MASK;
	devid   = (event[0] >> EVENT_DEVID_SHIFT) & EVENT_DEVID_MASK;
	pasid   = (event[0] & EVENT_DOMID_MASK_HI) |
		  (event[1] & EVENT_DOMID_MASK_LO);
	flags   = (event[1] >> EVENT_FLAGS_SHIFT) & EVENT_FLAGS_MASK;
	address = (u64)(((u64)event[3]) << 32) | event[2];

	if (type == 0) {
		/* Did we hit the erratum? */
		if (++count == LOOP_TIMEOUT) {
			FUNC8("No event written to event log\n");
			return;
		}
		FUNC9(1);
		goto retry;
	}

	if (type == EVENT_TYPE_IO_FAULT) {
		FUNC3(devid, pasid, address, flags);
		return;
	}

	switch (type) {
	case EVENT_TYPE_ILL_DEV:
		FUNC4(dev, "Event logged [ILLEGAL_DEV_TABLE_ENTRY device=%02x:%02x.%x pasid=0x%05x address=0x%llx flags=0x%04x]\n",
			FUNC0(devid), FUNC2(devid), FUNC1(devid),
			pasid, address, flags);
		FUNC6(devid);
		break;
	case EVENT_TYPE_DEV_TAB_ERR:
		FUNC4(dev, "Event logged [DEV_TAB_HARDWARE_ERROR device=%02x:%02x.%x "
			"address=0x%llx flags=0x%04x]\n",
			FUNC0(devid), FUNC2(devid), FUNC1(devid),
			address, flags);
		break;
	case EVENT_TYPE_PAGE_TAB_ERR:
		FUNC4(dev, "Event logged [PAGE_TAB_HARDWARE_ERROR device=%02x:%02x.%x pasid=0x%04x address=0x%llx flags=0x%04x]\n",
			FUNC0(devid), FUNC2(devid), FUNC1(devid),
			pasid, address, flags);
		break;
	case EVENT_TYPE_ILL_CMD:
		FUNC4(dev, "Event logged [ILLEGAL_COMMAND_ERROR address=0x%llx]\n", address);
		FUNC5(address);
		break;
	case EVENT_TYPE_CMD_HARD_ERR:
		FUNC4(dev, "Event logged [COMMAND_HARDWARE_ERROR address=0x%llx flags=0x%04x]\n",
			address, flags);
		break;
	case EVENT_TYPE_IOTLB_INV_TO:
		FUNC4(dev, "Event logged [IOTLB_INV_TIMEOUT device=%02x:%02x.%x address=0x%llx]\n",
			FUNC0(devid), FUNC2(devid), FUNC1(devid),
			address);
		break;
	case EVENT_TYPE_INV_DEV_REQ:
		FUNC4(dev, "Event logged [INVALID_DEVICE_REQUEST device=%02x:%02x.%x pasid=0x%05x address=0x%llx flags=0x%04x]\n",
			FUNC0(devid), FUNC2(devid), FUNC1(devid),
			pasid, address, flags);
		break;
	case EVENT_TYPE_INV_PPR_REQ:
		pasid = ((event[0] >> 16) & 0xFFFF)
			| ((event[1] << 6) & 0xF0000);
		tag = event[1] & 0x03FF;
		FUNC4(dev, "Event logged [INVALID_PPR_REQUEST device=%02x:%02x.%x pasid=0x%05x address=0x%llx flags=0x%04x tag=0x%03x]\n",
			FUNC0(devid), FUNC2(devid), FUNC1(devid),
			pasid, address, flags, tag);
		break;
	default:
		FUNC4(dev, "Event logged [UNKNOWN event[0]=0x%08x event[1]=0x%08x event[2]=0x%08x event[3]=0x%08x\n",
			event[0], event[1], event[2], event[3]);
	}

	FUNC7(__evt, 0, 4 * sizeof(u32));
}