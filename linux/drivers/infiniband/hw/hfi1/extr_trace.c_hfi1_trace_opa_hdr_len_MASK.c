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
typedef  int /*<<< orphan*/  u8 ;
struct hfi1_opa_header {int /*<<< orphan*/  opah; int /*<<< orphan*/  ibh; int /*<<< orphan*/  hdr_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

u8 FUNC2(struct hfi1_opa_header *opa_hdr)
{
	if (!opa_hdr->hdr_type)
		return FUNC1(&opa_hdr->ibh);
	else
		return FUNC0(&opa_hdr->opah);
}