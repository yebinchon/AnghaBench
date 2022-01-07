
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbus_host {int dummy; } ;


 int cbus_send_bit (struct cbus_host*,unsigned int) ;

__attribute__((used)) static void cbus_send_data(struct cbus_host *host, unsigned data, unsigned len)
{
 int i;

 for (i = len; i > 0; i--)
  cbus_send_bit(host, data & (1 << (i - 1)));
}
