
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa {int dummy; } ;


 int GEN5_RETRIEVE_MUTUAL_PWC_DATA ;
 int PIP_RETRIEVE_DATA_STRUCTURE ;
 int cyapa_gen5_read_idac_data (struct cyapa*,int ,int ,int*,int*,int*,int*) ;

__attribute__((used)) static int cyapa_gen5_read_mutual_idac_data(struct cyapa *cyapa,
 int *gidac_mutual_max, int *gidac_mutual_min, int *gidac_mutual_ave,
 int *lidac_mutual_max, int *lidac_mutual_min, int *lidac_mutual_ave)
{
 int data_size;
 int error;

 *gidac_mutual_max = *gidac_mutual_min = *gidac_mutual_ave = 0;
 *lidac_mutual_max = *lidac_mutual_min = *lidac_mutual_ave = 0;

 data_size = 0;
 error = cyapa_gen5_read_idac_data(cyapa,
  PIP_RETRIEVE_DATA_STRUCTURE,
  GEN5_RETRIEVE_MUTUAL_PWC_DATA,
  &data_size,
  gidac_mutual_max, gidac_mutual_min, gidac_mutual_ave);
 if (error)
  return error;

 error = cyapa_gen5_read_idac_data(cyapa,
  PIP_RETRIEVE_DATA_STRUCTURE,
  GEN5_RETRIEVE_MUTUAL_PWC_DATA,
  &data_size,
  lidac_mutual_max, lidac_mutual_min, lidac_mutual_ave);
 return error;
}
