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
struct scatterlist {int dummy; } ;
struct crypt_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypt_config*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct scatterlist *FUNC2(struct crypt_config *cc,
					     struct scatterlist *sg)
{
	if (FUNC1(FUNC0(cc)))
		return &sg[2];

	return sg;
}