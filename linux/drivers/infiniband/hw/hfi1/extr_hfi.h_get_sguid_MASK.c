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
struct hfi1_pportdata {int /*<<< orphan*/ * guids; } ;
struct hfi1_ibport {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 unsigned int HFI1_GUIDS_PER_PORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hfi1_pportdata* FUNC2 (struct hfi1_ibport*) ; 

__attribute__((used)) static inline __be64 FUNC3(struct hfi1_ibport *ibp, unsigned int index)
{
	struct hfi1_pportdata *ppd = FUNC2(ibp);

	FUNC0(index >= HFI1_GUIDS_PER_PORT);
	return FUNC1(ppd->guids[index]);
}