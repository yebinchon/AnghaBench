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
typedef  int uint32_t ;

/* Variables and functions */
#define  AMD_IP_BLOCK_TYPE_UVD 129 
#define  AMD_IP_BLOCK_TYPE_VCE 128 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 

__attribute__((used)) static int FUNC2(void *handle,
				uint32_t block_type, bool gate)
{
	switch (block_type) {
	case AMD_IP_BLOCK_TYPE_UVD:
		FUNC0(handle, gate);
		break;
	case AMD_IP_BLOCK_TYPE_VCE:
		FUNC1(handle, gate);
		break;
	default:
		break;
	}
	return 0;
}