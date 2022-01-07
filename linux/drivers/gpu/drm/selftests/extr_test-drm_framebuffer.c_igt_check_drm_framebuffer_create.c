
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffer_created; int name; int cmd; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int FAIL (int,char*,int,int ) ;
 TYPE_1__* createbuffer_tests ;
 scalar_t__ execute_drm_mode_fb_cmd2 (int *) ;

int igt_check_drm_framebuffer_create(void *ignored)
{
 int i = 0;

 for (i = 0; i < ARRAY_SIZE(createbuffer_tests); i++) {
  FAIL(createbuffer_tests[i].buffer_created !=
    execute_drm_mode_fb_cmd2(&createbuffer_tests[i].cmd),
       "Test %d: \"%s\" failed\n", i, createbuffer_tests[i].name);
 }

 return 0;
}
