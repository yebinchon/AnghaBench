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
struct s3c24xx_i2c {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ S3C2410_IICCON ; 
 unsigned long S3C2410_IICCON_ACKEN ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct s3c24xx_i2c *i2c)
{
	unsigned long tmp;

	tmp = FUNC0(i2c->regs + S3C2410_IICCON);
	FUNC1(tmp & ~S3C2410_IICCON_ACKEN, i2c->regs + S3C2410_IICCON);
}