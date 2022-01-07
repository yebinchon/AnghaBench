
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma3000_accl_data {int bit_to_mg; } ;
typedef int s8 ;



__attribute__((used)) static void decode_mg(struct cma3000_accl_data *data, int *datax,
    int *datay, int *dataz)
{

 *datax = ((s8)*datax) * data->bit_to_mg;
 *datay = ((s8)*datay) * data->bit_to_mg;
 *dataz = ((s8)*dataz) * data->bit_to_mg;
}
