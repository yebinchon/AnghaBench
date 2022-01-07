
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct zip_device {TYPE_1__* iq; } ;
struct TYPE_2__ {scalar_t__ sw_tail; } ;


 int ZIP_CMD_QBUF_SIZE ;
 int free_pages (int ,int ) ;
 int get_order (int ) ;
 int zip_dbg (char*,scalar_t__) ;

void zip_cmd_qbuf_free(struct zip_device *zip, int q)
{
 zip_dbg("Freeing cmd_qbuf 0x%lx\n", zip->iq[q].sw_tail);

 free_pages((u64)zip->iq[q].sw_tail, get_order(ZIP_CMD_QBUF_SIZE));
}
