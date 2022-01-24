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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FFDC_LSIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 

__attribute__((used)) static void FUNC4(struct device *dev, const __be32 *ffdc,
				size_t ffdc_sz, bool internal)
{
	int pack = 0;
#define FFDC_LSIZE	60
	static char ffdc_line[FFDC_LSIZE];
	char *p = ffdc_line;

	while (ffdc_sz) {
		u32 w0, w1, w2, i;
		if (ffdc_sz < 3) {
			FUNC1(dev, "SBE invalid FFDC package size %zd\n", ffdc_sz);
			return;
		}
		w0 = FUNC0(*(ffdc++));
		w1 = FUNC0(*(ffdc++));
		w2 = FUNC0(*(ffdc++));
		ffdc_sz -= 3;
		if ((w0 >> 16) != 0xFFDC) {
			FUNC1(dev, "SBE invalid FFDC package signature %08x %08x %08x\n",
				w0, w1, w2);
			break;
		}
		w0 &= 0xffff;
		if (w0 > ffdc_sz) {
			FUNC1(dev, "SBE FFDC package len %d words but only %zd remaining\n",
				w0, ffdc_sz);
			w0 = ffdc_sz;
			break;
		}
		if (internal) {
			FUNC2(dev, "+---- SBE FFDC package %d for async err -----+\n",
				 pack++);
		} else {
			FUNC2(dev, "+---- SBE FFDC package %d for cmd %02x:%02x -----+\n",
				 pack++, (w1 >> 8) & 0xff, w1 & 0xff);
		}
		FUNC2(dev, "| Response code: %08x                   |\n", w2);
		FUNC2(dev, "|-------------------------------------------|\n");
		for (i = 0; i < w0; i++) {
			if ((i & 3) == 0) {
				p = ffdc_line;
				p += FUNC3(p, "| %04x:", i << 4);
			}
			p += FUNC3(p, " %08x", FUNC0(*(ffdc++)));
			ffdc_sz--;
			if ((i & 3) == 3 || i == (w0 - 1)) {
				while ((i & 3) < 3) {
					p += FUNC3(p, "         ");
					i++;
				}
				FUNC2(dev, "%s |\n", ffdc_line);
			}
		}
		FUNC2(dev, "+-------------------------------------------+\n");
	}
}