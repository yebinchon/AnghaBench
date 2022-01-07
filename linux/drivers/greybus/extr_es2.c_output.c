
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gb_host_device {int dummy; } ;
struct es2_ap_dev {int dummy; } ;


 struct es2_ap_dev* hd_to_es2 (struct gb_host_device*) ;
 int output_async (struct es2_ap_dev*,void*,int ,int ) ;
 int output_sync (struct es2_ap_dev*,void*,int ,int ) ;

__attribute__((used)) static int output(struct gb_host_device *hd, void *req, u16 size, u8 cmd,
    bool async)
{
 struct es2_ap_dev *es2 = hd_to_es2(hd);

 if (async)
  return output_async(es2, req, size, cmd);

 return output_sync(es2, req, size, cmd);
}
