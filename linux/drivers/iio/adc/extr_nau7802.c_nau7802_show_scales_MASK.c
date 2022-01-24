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
struct nau7802_state {int /*<<< orphan*/ * scale_avail; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct nau7802_state* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,scalar_t__,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	struct nau7802_state *st = FUNC2(FUNC1(dev));
	int i, len = 0;

	for (i = 0; i < FUNC0(st->scale_avail); i++)
		len += FUNC3(buf + len, PAGE_SIZE - len, "0.%09d ",
				 st->scale_avail[i]);

	buf[len-1] = '\n';

	return len;
}