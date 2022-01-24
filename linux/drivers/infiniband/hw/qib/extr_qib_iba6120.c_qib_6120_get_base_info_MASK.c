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
struct qib_ctxtdata {int dummy; } ;
struct qib_base_info {int spi_runtime_flags; } ;

/* Variables and functions */
 int QIB_RUNTIME_FORCE_PIOAVAIL ; 
 int QIB_RUNTIME_FORCE_WC_ORDER ; 
 int QIB_RUNTIME_PCIE ; 
 int QIB_RUNTIME_PIO_REGSWAPPED ; 
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static int FUNC1(struct qib_ctxtdata *rcd,
				  struct qib_base_info *kinfo)
{
	if (FUNC0())
		kinfo->spi_runtime_flags |= QIB_RUNTIME_FORCE_WC_ORDER;

	kinfo->spi_runtime_flags |= QIB_RUNTIME_PCIE |
		QIB_RUNTIME_FORCE_PIOAVAIL | QIB_RUNTIME_PIO_REGSWAPPED;
	return 0;
}