
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct TYPE_2__ {int eld; } ;
struct cdn_dp_device {TYPE_1__ connector; } ;


 struct cdn_dp_device* dev_get_drvdata (struct device*) ;
 int memcpy (int *,int ,int ) ;
 int min (int,size_t) ;

__attribute__((used)) static int cdn_dp_audio_get_eld(struct device *dev, void *data,
    u8 *buf, size_t len)
{
 struct cdn_dp_device *dp = dev_get_drvdata(dev);

 memcpy(buf, dp->connector.eld, min(sizeof(dp->connector.eld), len));

 return 0;
}
