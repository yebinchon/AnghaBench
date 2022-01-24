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
struct crypt_config {int dummy; } ;
struct convert_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypt_config*,struct convert_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypt_config*,struct convert_context*) ; 
 scalar_t__ FUNC2 (struct crypt_config*) ; 

__attribute__((used)) static void FUNC3(struct crypt_config *cc,
			    struct convert_context *ctx)
{
	if (FUNC2(cc))
		FUNC0(cc, ctx);
	else
		FUNC1(cc, ctx);
}