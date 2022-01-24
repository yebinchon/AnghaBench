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
struct caam_rsa_key {int /*<<< orphan*/  n; int /*<<< orphan*/  e; int /*<<< orphan*/  tmp2; int /*<<< orphan*/  tmp1; int /*<<< orphan*/  qinv; int /*<<< orphan*/  dq; int /*<<< orphan*/  dp; int /*<<< orphan*/  q; int /*<<< orphan*/  p; int /*<<< orphan*/  d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct caam_rsa_key*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct caam_rsa_key *key)
{
	FUNC1(key->d);
	FUNC1(key->p);
	FUNC1(key->q);
	FUNC1(key->dp);
	FUNC1(key->dq);
	FUNC1(key->qinv);
	FUNC1(key->tmp1);
	FUNC1(key->tmp2);
	FUNC0(key->e);
	FUNC0(key->n);
	FUNC2(key, 0, sizeof(*key));
}