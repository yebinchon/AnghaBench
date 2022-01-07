
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_input {int input; } ;
struct hid_device {int dummy; } ;


 int input_enable_softrepeat (int ,int,int) ;

__attribute__((used)) static int gfrm_input_configured(struct hid_device *hid, struct hid_input *hidinput)
{





 input_enable_softrepeat(hidinput->input, 400, 100);
 return 0;
}
