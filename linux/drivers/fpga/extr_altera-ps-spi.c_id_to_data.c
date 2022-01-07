
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {size_t driver_data; } ;
struct altera_ps_data {size_t devtype; } ;
typedef size_t kernel_ulong_t ;


 size_t ARRAY_SIZE (struct altera_ps_data**) ;
 struct altera_ps_data** altera_ps_data_map ;

__attribute__((used)) static const struct altera_ps_data *id_to_data(const struct spi_device_id *id)
{
 kernel_ulong_t devtype = id->driver_data;
 const struct altera_ps_data *data;


 if (devtype >= ARRAY_SIZE(altera_ps_data_map))
  return ((void*)0);

 data = altera_ps_data_map[devtype];
 if (!data || data->devtype != devtype)
  return ((void*)0);

 return data;
}
