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
struct drm_dp_aux_msg {int dummy; } ;
struct drm_dp_aux {int dummy; } ;
struct analogix_dp_device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct analogix_dp_device*,struct drm_dp_aux_msg*) ; 
 struct analogix_dp_device* FUNC1 (struct drm_dp_aux*) ; 

__attribute__((used)) static ssize_t FUNC2(struct drm_dp_aux *aux,
				       struct drm_dp_aux_msg *msg)
{
	struct analogix_dp_device *dp = FUNC1(aux);

	return FUNC0(dp, msg);
}