
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct t4_swsqe {int dummy; } ;
struct t4_sq {int dummy; } ;
struct sk_buff {int dummy; } ;


 int EMSGSIZE ;
 scalar_t__ fill_swsqe (struct sk_buff*,struct t4_sq*,int ,struct t4_swsqe*) ;

__attribute__((used)) static int fill_swsqes(struct sk_buff *msg, struct t4_sq *sq,
         u16 first_idx, struct t4_swsqe *first_sqe,
         u16 last_idx, struct t4_swsqe *last_sqe)
{
 if (!first_sqe)
  goto out;
 if (fill_swsqe(msg, sq, first_idx, first_sqe))
  goto err;
 if (!last_sqe)
  goto out;
 if (fill_swsqe(msg, sq, last_idx, last_sqe))
  goto err;
out:
 return 0;
err:
 return -EMSGSIZE;
}
