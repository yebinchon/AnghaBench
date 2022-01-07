; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }
%struct.fb_info = type { %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@oops_in_progress = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.drm_fb_helper*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %10, align 8
  store %struct.drm_fb_helper* %11, %struct.drm_fb_helper** %6, align 8
  %12 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %13 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %7, align 8
  %15 = load i64, i64* @oops_in_progress, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %22 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %25 = call i32 @drm_master_internal_acquire(%struct.drm_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %45

30:                                               ; preds = %20
  %31 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %32 = call i64 @drm_drv_uses_atomic_modeset(%struct.drm_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %36 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %37 = call i32 @pan_display_atomic(%struct.fb_var_screeninfo* %35, %struct.fb_info* %36)
  store i32 %37, i32* %8, align 4
  br label %42

38:                                               ; preds = %30
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %41 = call i32 @pan_display_legacy(%struct.fb_var_screeninfo* %39, %struct.fb_info* %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %44 = call i32 @drm_master_internal_release(%struct.drm_device* %43)
  br label %45

45:                                               ; preds = %42, %27
  %46 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %47 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %17
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_master_internal_acquire(%struct.drm_device*) #1

declare dso_local i64 @drm_drv_uses_atomic_modeset(%struct.drm_device*) #1

declare dso_local i32 @pan_display_atomic(%struct.fb_var_screeninfo*, %struct.fb_info*) #1

declare dso_local i32 @pan_display_legacy(%struct.fb_var_screeninfo*, %struct.fb_info*) #1

declare dso_local i32 @drm_master_internal_release(%struct.drm_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
