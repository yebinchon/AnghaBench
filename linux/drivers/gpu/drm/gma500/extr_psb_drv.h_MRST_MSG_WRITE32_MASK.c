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
typedef  int uint ;
typedef  int u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct pci_dev* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 

__attribute__((used)) static inline void FUNC3(int domain, uint port, uint offset,
				    u32 value)
{
	int mcr = (0xE0<<24) | (port << 16) | (offset << 8) | 0xF0;
	struct pci_dev *pci_root = FUNC1(domain, 0, 0);
	FUNC2(pci_root, 0xD4, value);
	FUNC2(pci_root, 0xD0, mcr);
	FUNC0(pci_root);
}