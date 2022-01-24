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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct msm_kms {int dummy; } ;
struct msm_format {scalar_t__ pixel_format; } ;
struct mdp_format {struct msm_format const base; } ;

/* Variables and functions */
 int FUNC0 (struct mdp_format*) ; 
 struct mdp_format* formats ; 

const struct msm_format *FUNC1(struct msm_kms *kms, uint32_t format,
		uint64_t modifier)
{
	int i;
	for (i = 0; i < FUNC0(formats); i++) {
		const struct mdp_format *f = &formats[i];
		if (f->base.pixel_format == format)
			return &f->base;
	}
	return NULL;
}