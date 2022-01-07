
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMI_BIOS_DATE ;
 int ENODATA ;
 int ERANGE ;
 int dmi_get_date (int ,int*,int *,int *) ;

int dmi_get_bios_year(void)
{
 bool exists;
 int year;

 exists = dmi_get_date(DMI_BIOS_DATE, &year, ((void*)0), ((void*)0));
 if (!exists)
  return -ENODATA;

 return year ? year : -ERANGE;
}
