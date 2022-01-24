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
struct omap_des_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  engine; struct ablkcipher_request* req; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ablkcipher_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void FUNC4(struct omap_des_dev *dd, int err)
{
	struct ablkcipher_request *req = dd->req;

	FUNC3("err: %d\n", err);

	FUNC0(dd->engine, req, err);

	FUNC1(dd->dev);
	FUNC2(dd->dev);
}