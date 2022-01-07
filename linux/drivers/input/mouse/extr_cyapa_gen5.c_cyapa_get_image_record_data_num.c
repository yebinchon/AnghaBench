
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int* data; int size; } ;
struct cyapa_tsg_bin_image_data_record {int dummy; } ;



__attribute__((used)) static struct cyapa_tsg_bin_image_data_record *
cyapa_get_image_record_data_num(const struct firmware *fw,
  int *record_num)
{
 int head_size;

 head_size = fw->data[0] + 1;
 *record_num = (fw->size - head_size) /
   sizeof(struct cyapa_tsg_bin_image_data_record);
 return (struct cyapa_tsg_bin_image_data_record *)&fw->data[head_size];
}
