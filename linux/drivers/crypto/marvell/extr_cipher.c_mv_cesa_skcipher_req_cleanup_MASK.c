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
struct skcipher_request {int dummy; } ;
struct crypto_async_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skcipher_request*) ; 
 struct skcipher_request* FUNC1 (struct crypto_async_request*) ; 

__attribute__((used)) static inline void
FUNC2(struct crypto_async_request *req)
{
	struct skcipher_request *skreq = FUNC1(req);

	FUNC0(skreq);
}