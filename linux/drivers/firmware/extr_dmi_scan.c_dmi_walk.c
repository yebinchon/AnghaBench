
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ENOMEM ;
 int ENXIO ;
 int dmi_available ;
 int dmi_base ;
 int dmi_decode_table (int *,void (*) (struct dmi_header const*,void*),void*) ;
 int dmi_len ;
 int * dmi_remap (int ,int ) ;
 int dmi_unmap (int *) ;

int dmi_walk(void (*decode)(const struct dmi_header *, void *),
      void *private_data)
{
 u8 *buf;

 if (!dmi_available)
  return -ENXIO;

 buf = dmi_remap(dmi_base, dmi_len);
 if (buf == ((void*)0))
  return -ENOMEM;

 dmi_decode_table(buf, decode, private_data);

 dmi_unmap(buf);
 return 0;
}
