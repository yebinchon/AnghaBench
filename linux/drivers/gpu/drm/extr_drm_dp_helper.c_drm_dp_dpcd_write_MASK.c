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
struct drm_dp_aux {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DP_AUX_NATIVE_WRITE ; 
 int FUNC0 (struct drm_dp_aux*,int /*<<< orphan*/ ,unsigned int,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_dp_aux*,int /*<<< orphan*/ ,unsigned int,void*,int) ; 

ssize_t FUNC2(struct drm_dp_aux *aux, unsigned int offset,
			  void *buffer, size_t size)
{
	int ret;

	ret = FUNC0(aux, DP_AUX_NATIVE_WRITE, offset, buffer,
				 size);
	FUNC1(aux, DP_AUX_NATIVE_WRITE, offset, buffer, ret);
	return ret;
}