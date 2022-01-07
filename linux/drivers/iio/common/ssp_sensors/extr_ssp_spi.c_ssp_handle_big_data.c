
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_data {int dummy; } ;



__attribute__((used)) static int ssp_handle_big_data(struct ssp_data *data, char *dataframe, int *idx)
{

 *idx += 8;
 return 0;
}
