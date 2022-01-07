; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbdev.c_intel_fbdev_set_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbdev.c_intel_fbdev_set_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32, %struct.intel_fbdev* }
%struct.intel_fbdev = type { %struct.TYPE_6__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.fb_info* }
%struct.fb_info = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@FBINFO_STATE_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_fbdev_set_suspend(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_fbdev*, align 8
  %9 = alloca %struct.fb_info*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %7, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 1
  %14 = load %struct.intel_fbdev*, %struct.intel_fbdev** %13, align 8
  store %struct.intel_fbdev* %14, %struct.intel_fbdev** %8, align 8
  %15 = load %struct.intel_fbdev*, %struct.intel_fbdev** %8, align 8
  %16 = icmp ne %struct.intel_fbdev* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.intel_fbdev*, %struct.intel_fbdev** %8, align 8
  %19 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %3
  br label %83

23:                                               ; preds = %17
  %24 = load %struct.intel_fbdev*, %struct.intel_fbdev** %8, align 8
  %25 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.fb_info*, %struct.fb_info** %26, align 8
  store %struct.fb_info* %27, %struct.fb_info** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @FBINFO_STATE_RUNNING, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = call i32 @flush_work(i32* %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = call i32 (...) @console_lock()
  br label %53

40:                                               ; preds = %23
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @FBINFO_STATE_RUNNING, align 4
  %43 = icmp ne i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = call i32 (...) @console_trylock()
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %50 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %49, i32 0, i32 0
  %51 = call i32 @schedule_work(i32* %50)
  br label %83

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %38
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @FBINFO_STATE_RUNNING, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load %struct.intel_fbdev*, %struct.intel_fbdev** %8, align 8
  %59 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call %struct.TYPE_5__* @intel_fb_obj(i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %57
  %67 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memset_io(i32 %69, i32 0, i32 %72)
  br label %74

74:                                               ; preds = %66, %57, %53
  %75 = load %struct.intel_fbdev*, %struct.intel_fbdev** %8, align 8
  %76 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %75, i32 0, i32 0
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @drm_fb_helper_set_suspend(%struct.TYPE_6__* %76, i32 %77)
  %79 = call i32 (...) @console_unlock()
  %80 = load %struct.intel_fbdev*, %struct.intel_fbdev** %8, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @intel_fbdev_hpd_set_suspend(%struct.intel_fbdev* %80, i32 %81)
  br label %83

83:                                               ; preds = %74, %48, %22
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @console_trylock(...) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local %struct.TYPE_5__* @intel_fb_obj(i32*) #1

declare dso_local i32 @memset_io(i32, i32, i32) #1

declare dso_local i32 @drm_fb_helper_set_suspend(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @console_unlock(...) #1

declare dso_local i32 @intel_fbdev_hpd_set_suspend(%struct.intel_fbdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
