
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uverbs_flow_spec_hdr {int size; } ;



__attribute__((used)) static size_t kern_spec_filter_sz(const struct ib_uverbs_flow_spec_hdr *spec)
{

 return (spec->size - sizeof(struct ib_uverbs_flow_spec_hdr)) / 2;
}
