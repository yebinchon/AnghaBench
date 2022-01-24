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
#define  AMD_IP_BLOCK_TYPE_ACP 134 
#define  AMD_IP_BLOCK_TYPE_GFX 133 
#define  AMD_IP_BLOCK_TYPE_GMC 132 
#define  AMD_IP_BLOCK_TYPE_SDMA 131 
#define  AMD_IP_BLOCK_TYPE_UVD 130 
#define  AMD_IP_BLOCK_TYPE_VCE 129 
#define  AMD_IP_BLOCK_TYPE_VCN 128 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 

__attribute__((used)) static int FUNC6(void *handle,
				uint32_t block_type, bool gate)
{
	int ret = 0;

	switch (block_type) {
	case AMD_IP_BLOCK_TYPE_UVD:
	case AMD_IP_BLOCK_TYPE_VCN:
		FUNC4(handle, gate);
		break;
	case AMD_IP_BLOCK_TYPE_VCE:
		FUNC5(handle, gate);
		break;
	case AMD_IP_BLOCK_TYPE_GMC:
		FUNC2(handle);
		break;
	case AMD_IP_BLOCK_TYPE_GFX:
		ret = FUNC1(handle, gate);
		break;
	case AMD_IP_BLOCK_TYPE_ACP:
		FUNC0(handle, gate);
		break;
	case AMD_IP_BLOCK_TYPE_SDMA:
		FUNC3(handle, gate);
		break;
	default:
		break;
	}
	return ret;
}