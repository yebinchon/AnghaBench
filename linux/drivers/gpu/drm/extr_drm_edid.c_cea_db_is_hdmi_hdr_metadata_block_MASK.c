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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 scalar_t__ const HDR_STATIC_METADATA_BLOCK ; 
 scalar_t__ USE_EXTENDED_TAG ; 
 int FUNC0 (scalar_t__ const*) ; 
 scalar_t__ FUNC1 (scalar_t__ const*) ; 

__attribute__((used)) static bool FUNC2(const u8 *db)
{
	if (FUNC1(db) != USE_EXTENDED_TAG)
		return false;

	if (db[1] != HDR_STATIC_METADATA_BLOCK)
		return false;

	if (FUNC0(db) < 3)
		return false;

	return true;
}