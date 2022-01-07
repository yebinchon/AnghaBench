
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_output {unsigned int channel; unsigned int master; } ;
struct stm_data {int (* packet ) (struct stm_data*,unsigned int,unsigned int,int ,int ,int ,unsigned char const*) ;} ;
typedef scalar_t__ ssize_t ;


 int STP_PACKET_FLAG ;
 scalar_t__ stm_data_write (struct stm_data*,unsigned int,unsigned int,int,char const*,size_t) ;
 int stub1 (struct stm_data*,unsigned int,unsigned int,int ,int ,int ,unsigned char const*) ;

__attribute__((used)) static ssize_t basic_write(struct stm_data *data, struct stm_output *output,
      unsigned int chan, const char *buf, size_t count)
{
 unsigned int c = output->channel + chan;
 unsigned int m = output->master;
 const unsigned char nil = 0;
 ssize_t sz;

 sz = stm_data_write(data, m, c, 1, buf, count);
 if (sz > 0)
  data->packet(data, m, c, STP_PACKET_FLAG, 0, 0, &nil);

 return sz;
}
