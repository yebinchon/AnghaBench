
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyttsp_xydata {int touch12_id; int touch34_id; } ;



__attribute__((used)) static void cyttsp_extract_track_ids(struct cyttsp_xydata *xy_data, int *ids)
{
 ids[0] = xy_data->touch12_id >> 4;
 ids[1] = xy_data->touch12_id & 0xF;
 ids[2] = xy_data->touch34_id >> 4;
 ids[3] = xy_data->touch34_id & 0xF;
}
