
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsc_client_data {scalar_t__ usecnt; int cl; } ;


 int BUG_ON (int) ;
 int hsi_flush (int ) ;
 int hsi_release_port (int ) ;

__attribute__((used)) static inline void __hsc_port_release(struct hsc_client_data *cl_data)
{
 BUG_ON(cl_data->usecnt == 0);

 if (--cl_data->usecnt == 0) {
  hsi_flush(cl_data->cl);
  hsi_release_port(cl_data->cl);
 }
}
