
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {int con_priv; } ;


 int flexrm_process_completions (int ) ;

__attribute__((used)) static bool flexrm_peek_data(struct mbox_chan *chan)
{
 int cnt = flexrm_process_completions(chan->con_priv);

 return (cnt > 0) ? 1 : 0;
}
