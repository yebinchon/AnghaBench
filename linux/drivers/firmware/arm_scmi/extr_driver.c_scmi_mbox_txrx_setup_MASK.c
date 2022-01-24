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
struct scmi_info {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct scmi_info*,struct device*,int,int) ; 

__attribute__((used)) static inline int
FUNC1(struct scmi_info *info, struct device *dev, int prot_id)
{
	int ret = FUNC0(info, dev, prot_id, true);

	if (!ret) /* Rx is optional, hence no error check */
		FUNC0(info, dev, prot_id, false);

	return ret;
}