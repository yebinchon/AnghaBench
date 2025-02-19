; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.drm_fb_helper* }
%struct.fb_var_screeninfo = type { i64 }
%struct.drm_fb_helper = type { i32 }

@oops_in_progress = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PIXEL CLOCK SET\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 1
  %8 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %7, align 8
  store %struct.drm_fb_helper* %8, %struct.drm_fb_helper** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  store %struct.fb_var_screeninfo* %10, %struct.fb_var_screeninfo** %5, align 8
  %11 = load i64, i64* @oops_in_progress, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %16
  %26 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %27 = call i32 @drm_fb_helper_restore_fbdev_mode_unlocked(%struct.drm_fb_helper* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %21, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_fb_helper_restore_fbdev_mode_unlocked(%struct.drm_fb_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
