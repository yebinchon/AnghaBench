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
struct mdp4_kms {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mdp4_kms*) ; 
 struct mdp4_kms* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_kms*) ; 

__attribute__((used)) static void FUNC3(struct msm_kms *kms)
{
	struct mdp4_kms *mdp4_kms = FUNC1(FUNC2(kms));
	FUNC0(mdp4_kms);
}