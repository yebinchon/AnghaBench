; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbdev.c_intel_fbdev_output_poll_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbdev.c_intel_fbdev_output_poll_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.intel_fbdev = type { i32, %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.intel_fbdev* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_fbdev_output_poll_changed(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.intel_fbdev*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = call %struct.TYPE_3__* @to_i915(%struct.drm_device* %5)
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.intel_fbdev*, %struct.intel_fbdev** %7, align 8
  store %struct.intel_fbdev* %8, %struct.intel_fbdev** %3, align 8
  %9 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %10 = icmp ne %struct.intel_fbdev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %14 = call i32 @intel_fbdev_sync(%struct.intel_fbdev* %13)
  %15 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %16 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %15, i32 0, i32 3
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %19 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %25 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %27 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %26, i32 0, i32 3
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %12
  %32 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %33 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %38 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36, %31
  %43 = load %struct.intel_fbdev*, %struct.intel_fbdev** %3, align 8
  %44 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %43, i32 0, i32 1
  %45 = call i32 @drm_fb_helper_hotplug_event(%struct.TYPE_4__* %44)
  br label %46

46:                                               ; preds = %11, %42, %36, %12
  ret void
}

declare dso_local %struct.TYPE_3__* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @intel_fbdev_sync(%struct.intel_fbdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_fb_helper_hotplug_event(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
