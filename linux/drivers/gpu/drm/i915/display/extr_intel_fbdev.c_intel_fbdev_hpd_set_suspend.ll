; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbdev.c_intel_fbdev_hpd_set_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbdev.c_intel_fbdev_hpd_set_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_fbdev = type { i32, i32, i32, i32 }

@FBINFO_STATE_SUSPENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Handling delayed fbcon HPD event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_fbdev*, i32)* @intel_fbdev_hpd_set_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_fbdev_hpd_set_suspend(%struct.intel_fbdev* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_fbdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_fbdev* %0, %struct.intel_fbdev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %7 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %6, i32 0, i32 3
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @FBINFO_STATE_SUSPENDED, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %14 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %16 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %21 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %19, %2
  %25 = phi i1 [ false, %2 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %28 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %30 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %29, i32 0, i32 3
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %37 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %36, i32 0, i32 2
  %38 = call i32 @drm_fb_helper_hotplug_event(i32* %37)
  br label %39

39:                                               ; preds = %34, %24
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_fb_helper_hotplug_event(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
