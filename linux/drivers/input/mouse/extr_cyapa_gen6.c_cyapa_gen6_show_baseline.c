
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cyapa {int dummy; } ;
typedef int ssize_t ;
typedef int data ;


 int EBUSY ;
 int GEN6_MAX_RX_NUM ;
 int GEN6_RETRIEVE_DATA_ID_ATTENURATOR_TRIM ;
 int GEN6_RETRIEVE_DATA_ID_RX_ATTENURATOR_IDAC ;
 scalar_t__ PAGE_SIZE ;
 int cyapa_is_pip_app_mode (struct cyapa*) ;
 int cyapa_pip_resume_scanning (struct cyapa*) ;
 int cyapa_pip_retrieve_data_structure (struct cyapa*,int ,int,int ,int *,int*) ;
 int cyapa_pip_suspend_scanning (struct cyapa*) ;
 struct cyapa* dev_get_drvdata (struct device*) ;
 int memset (char*,int ,scalar_t__) ;
 int scnprintf (char*,scalar_t__,char*,...) ;

__attribute__((used)) static ssize_t cyapa_gen6_show_baseline(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct cyapa *cyapa = dev_get_drvdata(dev);
 u8 data[GEN6_MAX_RX_NUM];
 int data_len;
 int size = 0;
 int i;
 int error;
 int resume_error;

 if (!cyapa_is_pip_app_mode(cyapa))
  return -EBUSY;


 error = cyapa_pip_suspend_scanning(cyapa);
 if (error)
  return error;


 data_len = sizeof(data);
 error = cyapa_pip_retrieve_data_structure(cyapa, 0, data_len,
   GEN6_RETRIEVE_DATA_ID_RX_ATTENURATOR_IDAC,
   data, &data_len);
 if (error)
  goto resume_scanning;

 size = scnprintf(buf, PAGE_SIZE, "%d %d %d %d %d %d ",
   data[0],
   data[1],
   data[2],
   data[3],
   data[4],
   data[5]
   );


 data_len = sizeof(data);
 error = cyapa_pip_retrieve_data_structure(cyapa, 0, data_len,
   GEN6_RETRIEVE_DATA_ID_ATTENURATOR_TRIM,
   data, &data_len);
 if (error)
  goto resume_scanning;


 for (i = 0; i < data_len; i++)
  size += scnprintf(buf + size, PAGE_SIZE - size, "%d ", data[i]);
 size += scnprintf(buf + size, PAGE_SIZE - size, "\n");

resume_scanning:

 resume_error = cyapa_pip_resume_scanning(cyapa);
 if (resume_error || error) {
  memset(buf, 0, PAGE_SIZE);
  return resume_error ? resume_error : error;
 }

 return size;
}
