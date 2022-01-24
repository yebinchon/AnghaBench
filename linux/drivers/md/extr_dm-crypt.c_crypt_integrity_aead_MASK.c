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
struct crypt_config {int /*<<< orphan*/  cipher_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_MODE_INTEGRITY_AEAD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(struct crypt_config *cc)
{
	return FUNC0(CRYPT_MODE_INTEGRITY_AEAD, &cc->cipher_flags);
}