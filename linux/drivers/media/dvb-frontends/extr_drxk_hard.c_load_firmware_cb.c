
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct drxk_state {struct firmware const* fw; int * microcode_name; } ;


 int dprintk (int,char*,char*) ;
 int init_drxk (struct drxk_state*) ;
 int pr_err (char*,int *) ;
 int pr_info (char*,int *) ;

__attribute__((used)) static void load_firmware_cb(const struct firmware *fw,
        void *context)
{
 struct drxk_state *state = context;

 dprintk(1, ": %s\n", fw ? "firmware loaded" : "firmware not loaded");
 if (!fw) {
  pr_err("Could not load firmware file %s.\n",
   state->microcode_name);
  pr_info("Copy %s to your hotplug directory!\n",
   state->microcode_name);
  state->microcode_name = ((void*)0);
 }
 state->fw = fw;

 init_drxk(state);
}
