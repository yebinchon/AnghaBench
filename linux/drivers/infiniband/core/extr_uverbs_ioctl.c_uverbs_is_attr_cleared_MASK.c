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
typedef  int u16 ;
struct ib_uverbs_attr {int len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void const*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const struct ib_uverbs_attr *uattr,
				   u16 len)
{
	if (uattr->len > sizeof(((struct ib_uverbs_attr *)0)->data))
		return FUNC0(FUNC2(uattr->data) + len,
					    uattr->len - len);

	return !FUNC1((const void *)&uattr->data + len,
			   0, uattr->len - len);
}