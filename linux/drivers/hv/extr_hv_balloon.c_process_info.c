
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_dynmem_device {int dummy; } ;
struct dm_info_msg {scalar_t__ info; } ;
struct dm_info_header {int type; int data_size; } ;
typedef int __u64 ;



 int PAGE_SHIFT ;
 int pr_info (char*,int) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static void process_info(struct hv_dynmem_device *dm, struct dm_info_msg *msg)
{
 struct dm_info_header *info_hdr;

 info_hdr = (struct dm_info_header *)msg->info;

 switch (info_hdr->type) {
 case 128:
  if (info_hdr->data_size == sizeof(__u64)) {
   __u64 *max_page_count = (__u64 *)&info_hdr[1];

   pr_info("Max. dynamic memory size: %llu MB\n",
    (*max_page_count) >> (20 - PAGE_SHIFT));
  }

  break;
 default:
  pr_warn("Received Unknown type: %d\n", info_hdr->type);
 }
}
