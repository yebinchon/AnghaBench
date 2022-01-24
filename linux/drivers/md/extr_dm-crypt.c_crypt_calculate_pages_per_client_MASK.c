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

/* Variables and functions */
 int DM_CRYPT_MEMORY_PERCENT ; 
 unsigned long DM_CRYPT_MIN_PAGES_PER_CLIENT ; 
 unsigned long dm_crypt_clients_n ; 
 unsigned long dm_crypt_pages_per_client ; 
 int FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned long pages = (FUNC1() - FUNC0()) * DM_CRYPT_MEMORY_PERCENT / 100;

	if (!dm_crypt_clients_n)
		return;

	pages /= dm_crypt_clients_n;
	if (pages < DM_CRYPT_MIN_PAGES_PER_CLIENT)
		pages = DM_CRYPT_MIN_PAGES_PER_CLIENT;
	dm_crypt_pages_per_client = pages;
}