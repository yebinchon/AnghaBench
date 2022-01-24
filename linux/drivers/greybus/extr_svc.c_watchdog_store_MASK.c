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
struct gb_svc {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct gb_svc*) ; 
 int FUNC1 (struct gb_svc*) ; 
 int FUNC2 (char const*,int*) ; 
 struct gb_svc* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			      struct device_attribute *attr, const char *buf,
			      size_t len)
{
	struct gb_svc *svc = FUNC3(dev);
	int retval;
	bool user_request;

	retval = FUNC2(buf, &user_request);
	if (retval)
		return retval;

	if (user_request)
		retval = FUNC1(svc);
	else
		retval = FUNC0(svc);
	if (retval)
		return retval;
	return len;
}