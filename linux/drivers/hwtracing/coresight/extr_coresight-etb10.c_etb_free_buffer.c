
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_buffers {int dummy; } ;


 int kfree (struct cs_buffers*) ;

__attribute__((used)) static void etb_free_buffer(void *config)
{
 struct cs_buffers *buf = config;

 kfree(buf);
}
