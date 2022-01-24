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
struct intel_css_header {int header_len; scalar_t__ version; } ;
struct intel_csr {scalar_t__ required_version; scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(struct intel_csr *csr,
			    struct intel_css_header *css_header,
			    size_t rem_size)
{
	if (rem_size < sizeof(struct intel_css_header)) {
		FUNC2("Truncated DMC firmware, refusing.\n");
		return 0;
	}

	if (sizeof(struct intel_css_header) !=
	    (css_header->header_len * 4)) {
		FUNC2("DMC firmware has wrong CSS header length "
			  "(%u bytes)\n",
			  (css_header->header_len * 4));
		return 0;
	}

	if (csr->required_version &&
	    css_header->version != csr->required_version) {
		FUNC3("Refusing to load DMC firmware v%u.%u,"
			 " please use v%u.%u\n",
			 FUNC0(css_header->version),
			 FUNC1(css_header->version),
			 FUNC0(csr->required_version),
			 FUNC1(csr->required_version));
		return 0;
	}

	csr->version = css_header->version;

	return sizeof(struct intel_css_header);
}