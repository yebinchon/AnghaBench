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
struct dm_crypt_request {int dummy; } ;
struct crypt_config {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct crypt_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypt_config*) ; 
 scalar_t__ FUNC3 (struct crypt_config*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 *FUNC6(struct crypt_config *cc,
		       struct dm_crypt_request *dmreq)
{
	if (FUNC3(cc))
		return (u8 *)FUNC0((unsigned long)(dmreq + 1),
			FUNC4(FUNC2(cc)) + 1);
	else
		return (u8 *)FUNC0((unsigned long)(dmreq + 1),
			FUNC5(FUNC1(cc)) + 1);
}