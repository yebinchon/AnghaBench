
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_cmdbuf_res_manager {int dummy; } ;
struct hlist_head {int dummy; } ;


 int VMW_CMDBUF_RES_MAN_HT_ORDER ;
 size_t ttm_round_pot (int) ;
 scalar_t__ unlikely (int) ;

size_t vmw_cmdbuf_res_man_size(void)
{
 static size_t res_man_size;

 if (unlikely(res_man_size == 0))
  res_man_size =
   ttm_round_pot(sizeof(struct vmw_cmdbuf_res_manager)) +
   ttm_round_pot(sizeof(struct hlist_head) <<
          VMW_CMDBUF_RES_MAN_HT_ORDER);

 return res_man_size;
}
