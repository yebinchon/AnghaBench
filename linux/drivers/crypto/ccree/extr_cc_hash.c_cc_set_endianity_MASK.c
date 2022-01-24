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
typedef  scalar_t__ u32 ;
struct cc_hw_desc {int dummy; } ;

/* Variables and functions */
 scalar_t__ DRV_HASH_MD5 ; 
 scalar_t__ DRV_HASH_SHA384 ; 
 scalar_t__ DRV_HASH_SHA512 ; 
 int /*<<< orphan*/  HASH_DIGEST_RESULT_LITTLE_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (struct cc_hw_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(u32 mode, struct cc_hw_desc *desc)
{
	if (mode == DRV_HASH_MD5 || mode == DRV_HASH_SHA384 ||
	    mode == DRV_HASH_SHA512) {
		FUNC0(desc, 1);
	} else {
		FUNC1(desc, HASH_DIGEST_RESULT_LITTLE_ENDIAN);
	}
}