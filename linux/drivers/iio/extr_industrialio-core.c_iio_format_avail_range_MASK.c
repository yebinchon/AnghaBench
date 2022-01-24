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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EFBIG ; 
#define  IIO_VAL_INT 128 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (char*,scalar_t__,int,int,int const*) ; 
 scalar_t__ FUNC1 (char*,scalar_t__,char*) ; 

__attribute__((used)) static ssize_t FUNC2(char *buf, const int *vals, int type)
{
	int i;
	ssize_t len;

	len = FUNC1(buf, PAGE_SIZE, "[");
	switch (type) {
	case IIO_VAL_INT:
		for (i = 0; i < 3; i++) {
			len += FUNC0(buf + len, PAGE_SIZE - len,
						  type, 1, &vals[i]);
			if (len >= PAGE_SIZE)
				return -EFBIG;
			if (i < 2)
				len += FUNC1(buf + len, PAGE_SIZE - len,
						" ");
			else
				len += FUNC1(buf + len, PAGE_SIZE - len,
						"]\n");
			if (len >= PAGE_SIZE)
				return -EFBIG;
		}
		break;
	default:
		for (i = 0; i < 3; i++) {
			len += FUNC0(buf + len, PAGE_SIZE - len,
						  type, 2, &vals[i * 2]);
			if (len >= PAGE_SIZE)
				return -EFBIG;
			if (i < 2)
				len += FUNC1(buf + len, PAGE_SIZE - len,
						" ");
			else
				len += FUNC1(buf + len, PAGE_SIZE - len,
						"]\n");
			if (len >= PAGE_SIZE)
				return -EFBIG;
		}
	}

	return len;
}