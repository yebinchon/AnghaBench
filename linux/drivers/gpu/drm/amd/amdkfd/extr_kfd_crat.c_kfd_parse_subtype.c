
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct crat_subtype_memory {int dummy; } ;
struct crat_subtype_iolink {int dummy; } ;
struct crat_subtype_generic {int type; } ;
struct crat_subtype_computeunit {int dummy; } ;
struct crat_subtype_cache {int dummy; } ;
 int kfd_parse_subtype_cache (struct crat_subtype_cache*,struct list_head*) ;
 int kfd_parse_subtype_cu (struct crat_subtype_computeunit*,struct list_head*) ;
 int kfd_parse_subtype_iolink (struct crat_subtype_iolink*,struct list_head*) ;
 int kfd_parse_subtype_mem (struct crat_subtype_memory*,struct list_head*) ;
 int pr_debug (char*) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static int kfd_parse_subtype(struct crat_subtype_generic *sub_type_hdr,
    struct list_head *device_list)
{
 struct crat_subtype_computeunit *cu;
 struct crat_subtype_memory *mem;
 struct crat_subtype_cache *cache;
 struct crat_subtype_iolink *iolink;
 int ret = 0;

 switch (sub_type_hdr->type) {
 case 131:
  cu = (struct crat_subtype_computeunit *)sub_type_hdr;
  ret = kfd_parse_subtype_cu(cu, device_list);
  break;
 case 129:
  mem = (struct crat_subtype_memory *)sub_type_hdr;
  ret = kfd_parse_subtype_mem(mem, device_list);
  break;
 case 133:
  cache = (struct crat_subtype_cache *)sub_type_hdr;
  ret = kfd_parse_subtype_cache(cache, device_list);
  break;
 case 128:



  pr_debug("Found TLB entry in CRAT table (not processing)\n");
  break;
 case 132:



  pr_debug("Found CCOMPUTE entry in CRAT table (not processing)\n");
  break;
 case 130:
  iolink = (struct crat_subtype_iolink *)sub_type_hdr;
  ret = kfd_parse_subtype_iolink(iolink, device_list);
  break;
 default:
  pr_warn("Unknown subtype %d in CRAT\n",
    sub_type_hdr->type);
 }

 return ret;
}
