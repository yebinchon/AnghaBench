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
struct ib_header {int dummy; } ;
struct hfi1_ctxtdata {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hfi1_ctxtdata*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct ib_header *FUNC1(struct hfi1_ctxtdata *rcd,
						   __le32 *rhf_addr)
{
	return (struct ib_header *)FUNC0(rcd, rhf_addr);
}