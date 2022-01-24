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
typedef  int /*<<< orphan*/  u16 ;
struct capi_ctr {int /*<<< orphan*/  (* release_appl ) (struct capi_ctr*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct capi_ctr*) ; 
 int /*<<< orphan*/  FUNC2 (struct capi_ctr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct capi_ctr *ctr, u16 applid)
{
	FUNC0("applid %#x", applid);

	ctr->release_appl(ctr, applid);
	FUNC1(ctr);
}