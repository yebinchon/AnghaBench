
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_audio {int dummy; } ;
struct audio {int dummy; } ;


 struct dce_audio* DCE_AUD (struct audio*) ;
 int kfree (struct dce_audio*) ;

void dce_aud_destroy(struct audio **audio)
{
 struct dce_audio *aud = DCE_AUD(*audio);

 kfree(aud);
 *audio = ((void*)0);
}
