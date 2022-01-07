
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_snoop_private {int dummy; } ;
struct ib_mad_qp_info {int snoop_table_size; int snoop_lock; int snoop_count; struct ib_mad_snoop_private** snoop_table; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int atomic_inc (int *) ;
 struct ib_mad_snoop_private** krealloc (struct ib_mad_snoop_private**,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int register_snoop_agent(struct ib_mad_qp_info *qp_info,
    struct ib_mad_snoop_private *mad_snoop_priv)
{
 struct ib_mad_snoop_private **new_snoop_table;
 unsigned long flags;
 int i;

 spin_lock_irqsave(&qp_info->snoop_lock, flags);

 for (i = 0; i < qp_info->snoop_table_size; i++)
  if (!qp_info->snoop_table[i])
   break;

 if (i == qp_info->snoop_table_size) {

  new_snoop_table = krealloc(qp_info->snoop_table,
        sizeof mad_snoop_priv *
        (qp_info->snoop_table_size + 1),
        GFP_ATOMIC);
  if (!new_snoop_table) {
   i = -ENOMEM;
   goto out;
  }

  qp_info->snoop_table = new_snoop_table;
  qp_info->snoop_table_size++;
 }
 qp_info->snoop_table[i] = mad_snoop_priv;
 atomic_inc(&qp_info->snoop_count);
out:
 spin_unlock_irqrestore(&qp_info->snoop_lock, flags);
 return i;
}
