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
struct scpi_drvinfo {int /*<<< orphan*/  protocol_version; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROTO_REV_MAJOR_MASK ; 
 int /*<<< orphan*/  PROTO_REV_MINOR_MASK ; 
 struct scpi_drvinfo* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	struct scpi_drvinfo *scpi_info = FUNC1(dev);

	return FUNC2(buf, "%lu.%lu\n",
		FUNC0(PROTO_REV_MAJOR_MASK, scpi_info->protocol_version),
		FUNC0(PROTO_REV_MINOR_MASK, scpi_info->protocol_version));
}