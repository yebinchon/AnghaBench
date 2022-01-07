
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IB_UVERBS_CQ_FLAGS_IGNORE_OVERRUN ;
 int IB_UVERBS_CQ_FLAGS_TIMESTAMP_COMPLETION ;

__attribute__((used)) static inline u32 check_cq_create_flags(u32 flags)
{




 return (flags & ~(IB_UVERBS_CQ_FLAGS_IGNORE_OVERRUN |
     IB_UVERBS_CQ_FLAGS_TIMESTAMP_COMPLETION));
}
