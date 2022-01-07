
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mhl3_infoframe {int version; int hev_format; } ;


 int memset (struct mhl3_infoframe*,int ,int) ;

__attribute__((used)) static int mhl3_infoframe_init(struct mhl3_infoframe *frame)
{
 memset(frame, 0, sizeof(*frame));

 frame->version = 3;
 frame->hev_format = -1;
 return 0;
}
