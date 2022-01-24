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
struct ipack_device {int id_format; int id_device; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
#define  IPACK_ID_VERSION_1 129 
#define  IPACK_ID_VERSION_2 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct ipack_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct ipack_device *idev = FUNC1(dev);
	switch (idev->id_format) {
	case IPACK_ID_VERSION_1:
		return FUNC0(buf, "0x%02x\n", idev->id_device);
	case IPACK_ID_VERSION_2:
		return FUNC0(buf, "0x%04x\n", idev->id_device);
	default:
		return -EIO;
	}
}