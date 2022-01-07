
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v4l2; int vdev; } ;
struct mxt_data {scalar_t__ max_reportid; scalar_t__ T100_reportid_max; scalar_t__ T100_reportid_min; scalar_t__ T44_address; scalar_t__ T19_reportid; scalar_t__ T9_reportid_max; scalar_t__ T9_reportid_min; scalar_t__ T71_address; scalar_t__ T7_address; scalar_t__ T6_reportid; scalar_t__ T5_msg_size; scalar_t__ T5_address; int * msg_buf; int * raw_info_block; int * info; int * object_table; TYPE_1__ dbg; } ;


 int kfree (int *) ;
 int v4l2_device_unregister (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void mxt_free_object_table(struct mxt_data *data)
{




 data->object_table = ((void*)0);
 data->info = ((void*)0);
 kfree(data->raw_info_block);
 data->raw_info_block = ((void*)0);
 kfree(data->msg_buf);
 data->msg_buf = ((void*)0);
 data->T5_address = 0;
 data->T5_msg_size = 0;
 data->T6_reportid = 0;
 data->T7_address = 0;
 data->T71_address = 0;
 data->T9_reportid_min = 0;
 data->T9_reportid_max = 0;
 data->T19_reportid = 0;
 data->T44_address = 0;
 data->T100_reportid_min = 0;
 data->T100_reportid_max = 0;
 data->max_reportid = 0;
}
