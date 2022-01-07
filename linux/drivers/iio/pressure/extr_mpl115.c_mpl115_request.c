
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpl115_data {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write ) (int ,int ,int ) ;} ;


 int MPL115_CONVERT ;
 int stub1 (int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mpl115_request(struct mpl115_data *data)
{
 int ret = data->ops->write(data->dev, MPL115_CONVERT, 0);

 if (ret < 0)
  return ret;

 usleep_range(3000, 4000);

 return 0;
}
