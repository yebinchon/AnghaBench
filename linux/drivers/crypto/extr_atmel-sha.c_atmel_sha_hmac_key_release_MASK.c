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
struct atmel_sha_hmac_key {int /*<<< orphan*/  keydup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_sha_hmac_key*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct atmel_sha_hmac_key *hkey)
{
	FUNC0(hkey->keydup);
	FUNC1(hkey, 0, sizeof(*hkey));
}