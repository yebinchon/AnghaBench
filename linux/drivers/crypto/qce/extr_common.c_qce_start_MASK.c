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
typedef  int u32 ;
struct crypto_async_request {int dummy; } ;

/* Variables and functions */
#define  CRYPTO_ALG_TYPE_ABLKCIPHER 129 
#define  CRYPTO_ALG_TYPE_AHASH 128 
 int EINVAL ; 
 int FUNC0 (struct crypto_async_request*,int,int) ; 
 int FUNC1 (struct crypto_async_request*,int,int) ; 

int FUNC2(struct crypto_async_request *async_req, u32 type, u32 totallen,
	      u32 offset)
{
	switch (type) {
	case CRYPTO_ALG_TYPE_ABLKCIPHER:
		return FUNC0(async_req, totallen, offset);
	case CRYPTO_ALG_TYPE_AHASH:
		return FUNC1(async_req, totallen, offset);
	default:
		return -EINVAL;
	}
}