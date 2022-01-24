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
struct msm_kms {int dummy; } ;
struct dpu_kms {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dpu_kms*) ; 
 struct dpu_kms* FUNC2 (struct msm_kms*) ; 

__attribute__((used)) static void FUNC3(struct msm_kms *kms)
{
	struct dpu_kms *dpu_kms;

	if (!kms) {
		FUNC0("invalid kms\n");
		return;
	}

	dpu_kms = FUNC2(kms);

	FUNC1(dpu_kms);
}