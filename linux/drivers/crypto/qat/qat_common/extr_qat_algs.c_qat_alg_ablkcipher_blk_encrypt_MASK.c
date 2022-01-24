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
struct ablkcipher_request {int nbytes; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int EINVAL ; 
 int FUNC0 (struct ablkcipher_request*) ; 

__attribute__((used)) static int FUNC1(struct ablkcipher_request *req)
{
	if (req->nbytes % AES_BLOCK_SIZE != 0)
		return -EINVAL;

	return FUNC0(req);
}