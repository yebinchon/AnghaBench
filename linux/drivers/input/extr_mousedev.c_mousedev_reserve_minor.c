
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MOUSEDEV_MINORS ;
 int MOUSEDEV_MINOR_BASE ;
 int MOUSEDEV_MIX ;
 int input_get_new_minor (int ,int,int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int mousedev_reserve_minor(bool mixdev)
{
 int minor;

 if (mixdev) {
  minor = input_get_new_minor(MOUSEDEV_MIX, 1, 0);
  if (minor < 0)
   pr_err("failed to reserve mixdev minor: %d\n", minor);
 } else {
  minor = input_get_new_minor(MOUSEDEV_MINOR_BASE,
         MOUSEDEV_MINORS, 1);
  if (minor < 0)
   pr_err("failed to reserve new minor: %d\n", minor);
 }

 return minor;
}
