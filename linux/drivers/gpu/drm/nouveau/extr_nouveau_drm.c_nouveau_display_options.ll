; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_display_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_display_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Loading Nouveau with parameters:\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"... tv_disable   : %d\0A\00", align 1
@nouveau_tv_disable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"... ignorelid    : %d\0A\00", align 1
@nouveau_ignorelid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"... duallink     : %d\0A\00", align 1
@nouveau_duallink = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"... nofbaccel    : %d\0A\00", align 1
@nouveau_nofbaccel = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"... config       : %s\0A\00", align 1
@nouveau_config = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"... debug        : %s\0A\00", align 1
@nouveau_debug = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"... noaccel      : %d\0A\00", align 1
@nouveau_noaccel = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"... modeset      : %d\0A\00", align 1
@nouveau_modeset = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"... runpm        : %d\0A\00", align 1
@nouveau_runtime_pm = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"... vram_pushbuf : %d\0A\00", align 1
@nouveau_vram_pushbuf = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"... hdmimhz      : %d\0A\00", align 1
@nouveau_hdmimhz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nouveau_display_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_display_options() #0 {
  %1 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @nouveau_tv_disable, align 4
  %3 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  %4 = load i32, i32* @nouveau_ignorelid, align 4
  %5 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @nouveau_duallink, align 4
  %7 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @nouveau_nofbaccel, align 4
  %9 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @nouveau_config, align 4
  %11 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @nouveau_debug, align 4
  %13 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @nouveau_noaccel, align 4
  %15 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @nouveau_modeset, align 4
  %17 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @nouveau_runtime_pm, align 4
  %19 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @nouveau_vram_pushbuf, align 4
  %21 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @nouveau_hdmimhz, align 4
  %23 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %22)
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
