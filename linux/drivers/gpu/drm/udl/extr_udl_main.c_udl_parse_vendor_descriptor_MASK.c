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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct usb_device {int dummy; } ;
struct udl_device {int /*<<< orphan*/  sku_pixel_limit; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_VENDOR_DESCRIPTOR_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct udl_device* FUNC7 (struct drm_device*) ; 
 int FUNC8 (struct usb_device*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct drm_device *dev,
				       struct usb_device *usbdev)
{
	struct udl_device *udl = FUNC7(dev);
	char *desc;
	char *buf;
	char *desc_end;

	u8 total_len = 0;

	buf = FUNC4(MAX_VENDOR_DESCRIPTOR_SIZE, GFP_KERNEL);
	if (!buf)
		return false;
	desc = buf;

	total_len = FUNC8(usbdev, 0x5f, /* vendor specific */
				    0, desc, MAX_VENDOR_DESCRIPTOR_SIZE);
	if (total_len > 5) {
		FUNC2("vendor descriptor length:%x data:%11ph\n",
			total_len, desc);

		if ((desc[0] != total_len) || /* descriptor length */
		    (desc[1] != 0x5f) ||   /* vendor descriptor type */
		    (desc[2] != 0x01) ||   /* version (2 bytes) */
		    (desc[3] != 0x00) ||
		    (desc[4] != total_len - 2)) /* length after type */
			goto unrecognized;

		desc_end = desc + total_len;
		desc += 5; /* the fixed header we've already parsed */

		while (desc < desc_end) {
			u8 length;
			u16 key;

			key = FUNC5(*((u16 *) desc));
			desc += sizeof(u16);
			length = *desc;
			desc++;

			switch (key) {
			case 0x0200: { /* max_area */
				u32 max_area;
				max_area = FUNC6(*((u32 *)desc));
				FUNC0("DL chip limited to %d pixel modes\n",
					max_area);
				udl->sku_pixel_limit = max_area;
				break;
			}
			default:
				break;
			}
			desc += length;
		}
	}

	goto success;

unrecognized:
	/* allow udlfb to load for now even if firmware unrecognized */
	FUNC1("Unrecognized vendor firmware descriptor\n");

success:
	FUNC3(buf);
	return true;
}