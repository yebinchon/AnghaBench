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
struct sec_request_el {struct sec_request_el* sgl_out; struct sec_request_el* sgl_in; int /*<<< orphan*/  dma_in; int /*<<< orphan*/  in; int /*<<< orphan*/  dma_out; int /*<<< orphan*/  out; } ;
struct sec_dev_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sec_request_el*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sec_dev_info*) ; 

__attribute__((used)) static void FUNC2(struct sec_request_el *el,
			    struct sec_dev_info *info)
{
	FUNC1(el->out, el->dma_out, info);
	FUNC1(el->in, el->dma_in, info);
	FUNC0(el->sgl_in);
	FUNC0(el->sgl_out);
	FUNC0(el);
}