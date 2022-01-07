
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int boardname; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dd_dev_info (struct hfi1_devdata*,char*) ;
 int kstrdup (char const*,int ) ;
 int read_hfi1_efi_var (struct hfi1_devdata*,char*,unsigned long*,void**) ;

__attribute__((used)) static int obtain_boardname(struct hfi1_devdata *dd)
{

 const char generic[] =
  "Intel Omni-Path Host Fabric Interface Adapter 100 Series";
 unsigned long size;
 int ret;

 ret = read_hfi1_efi_var(dd, "description", &size,
    (void **)&dd->boardname);
 if (ret) {
  dd_dev_info(dd, "Board description not found\n");

  dd->boardname = kstrdup(generic, GFP_KERNEL);
  if (!dd->boardname)
   return -ENOMEM;
 }
 return 0;
}
