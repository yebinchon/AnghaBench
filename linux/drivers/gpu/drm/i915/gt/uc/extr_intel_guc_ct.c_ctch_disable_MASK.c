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
struct intel_guc_ct_channel {int enabled; int /*<<< orphan*/  owner; } ;
struct intel_guc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  INTEL_GUC_CT_BUFFER_TYPE_RECV ; 
 int /*<<< orphan*/  INTEL_GUC_CT_BUFFER_TYPE_SEND ; 
 int /*<<< orphan*/  FUNC1 (struct intel_guc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct intel_guc *guc,
			 struct intel_guc_ct_channel *ctch)
{
	FUNC0(!ctch->enabled);

	ctch->enabled = false;

	FUNC1(guc,
					ctch->owner,
					INTEL_GUC_CT_BUFFER_TYPE_SEND);
	FUNC1(guc,
					ctch->owner,
					INTEL_GUC_CT_BUFFER_TYPE_RECV);
}