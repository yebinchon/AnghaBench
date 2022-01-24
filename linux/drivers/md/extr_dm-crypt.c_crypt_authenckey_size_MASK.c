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
struct crypto_authenc_key_param {int dummy; } ;
struct crypt_config {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct crypt_config*) ; 

__attribute__((used)) static unsigned FUNC2(struct crypt_config *cc)
{
	return FUNC1(cc) + FUNC0(sizeof(struct crypto_authenc_key_param));
}