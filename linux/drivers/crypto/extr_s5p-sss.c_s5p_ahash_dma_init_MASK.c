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
struct s5p_aes_dev {int dummy; } ;

/* Variables and functions */
 int SSS_FCINTENCLR_HDONEINTENCLR ; 
 int SSS_FCINTENCLR_HPARTINTENCLR ; 
 int SSS_FCINTENCLR_HRDMAINTENCLR ; 
 int SSS_FCINTENSET_HDONEINTENSET ; 
 int SSS_FCINTENSET_HPARTINTENSET ; 
 int SSS_FCINTENSET_HRDMAINTENSET ; 
 int SSS_HASHIN_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct s5p_aes_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_aes_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct s5p_aes_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_aes_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct s5p_aes_dev*,int) ; 

__attribute__((used)) static void FUNC5(struct s5p_aes_dev *dev, u32 hashflow)
{
	FUNC2(dev, SSS_FCINTENCLR_HRDMAINTENCLR |
			     SSS_FCINTENCLR_HDONEINTENCLR |
			     SSS_FCINTENCLR_HPARTINTENCLR);
	FUNC1(dev);

	FUNC0(dev);
	FUNC4(dev, hashflow & SSS_HASHIN_MASK);
	FUNC3(dev, SSS_FCINTENSET_HRDMAINTENSET |
			    SSS_FCINTENSET_HDONEINTENSET |
			    SSS_FCINTENSET_HPARTINTENSET);
}