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
struct hnae3_handle {int dummy; } ;
typedef  enum hnae3_reset_notify_type { ____Placeholder_hnae3_reset_notify_type } hnae3_reset_notify_type ;

/* Variables and functions */
#define  HNAE3_DOWN_CLIENT 130 
#define  HNAE3_INIT_CLIENT 129 
#define  HNAE3_UNINIT_CLIENT 128 
 int FUNC0 (struct hnae3_handle*) ; 
 int FUNC1 (struct hnae3_handle*) ; 
 int FUNC2 (struct hnae3_handle*) ; 

__attribute__((used)) static int FUNC3(struct hnae3_handle *handle,
				       enum hnae3_reset_notify_type type)
{
	int ret = 0;

	switch (type) {
	case HNAE3_DOWN_CLIENT:
		ret = FUNC0(handle);
		break;
	case HNAE3_INIT_CLIENT:
		ret = FUNC1(handle);
		break;
	case HNAE3_UNINIT_CLIENT:
		ret = FUNC2(handle);
		break;
	default:
		break;
	}

	return ret;
}