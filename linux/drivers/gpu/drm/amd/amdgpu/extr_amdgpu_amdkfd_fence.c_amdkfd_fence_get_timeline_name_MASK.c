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
struct dma_fence {int dummy; } ;
struct amdgpu_amdkfd_fence {char const* timeline_name; } ;

/* Variables and functions */
 struct amdgpu_amdkfd_fence* FUNC0 (struct dma_fence*) ; 

__attribute__((used)) static const char *FUNC1(struct dma_fence *f)
{
	struct amdgpu_amdkfd_fence *fence = FUNC0(f);

	return fence->timeline_name;
}