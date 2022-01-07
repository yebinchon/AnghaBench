; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbdev.c_intel_fbdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbdev.c_intel_fbdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32, %struct.intel_fbdev* }
%struct.intel_fbdev = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_fb_helper_funcs = common dso_local global i32 0, align 4
@intel_fbdev_suspend_worker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_fbdev_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_fbdev*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %7)
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %10 = call i32 @HAS_DISPLAY(%struct.drm_i915_private* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %64

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.intel_fbdev* @kzalloc(i32 12, i32 %20)
  store %struct.intel_fbdev* %21, %struct.intel_fbdev** %5, align 8
  %22 = load %struct.intel_fbdev*, %struct.intel_fbdev** %5, align 8
  %23 = icmp eq %struct.intel_fbdev* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %64

27:                                               ; preds = %19
  %28 = load %struct.intel_fbdev*, %struct.intel_fbdev** %5, align 8
  %29 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %28, i32 0, i32 2
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = load %struct.intel_fbdev*, %struct.intel_fbdev** %5, align 8
  %33 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %32, i32 0, i32 1
  %34 = call i32 @drm_fb_helper_prepare(%struct.drm_device* %31, i32* %33, i32* @intel_fb_helper_funcs)
  %35 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %36 = load %struct.intel_fbdev*, %struct.intel_fbdev** %5, align 8
  %37 = call i32 @intel_fbdev_init_bios(%struct.drm_device* %35, %struct.intel_fbdev* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load %struct.intel_fbdev*, %struct.intel_fbdev** %5, align 8
  %41 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %40, i32 0, i32 0
  store i32 32, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %27
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = load %struct.intel_fbdev*, %struct.intel_fbdev** %5, align 8
  %45 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %44, i32 0, i32 1
  %46 = call i32 @drm_fb_helper_init(%struct.drm_device* %43, i32* %45, i32 4)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.intel_fbdev*, %struct.intel_fbdev** %5, align 8
  %51 = call i32 @kfree(%struct.intel_fbdev* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %64

53:                                               ; preds = %42
  %54 = load %struct.intel_fbdev*, %struct.intel_fbdev** %5, align 8
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 1
  store %struct.intel_fbdev* %54, %struct.intel_fbdev** %56, align 8
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %58 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %57, i32 0, i32 0
  %59 = load i32, i32* @intel_fbdev_suspend_worker, align 4
  %60 = call i32 @INIT_WORK(i32* %58, i32 %59)
  %61 = load %struct.intel_fbdev*, %struct.intel_fbdev** %5, align 8
  %62 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %61, i32 0, i32 1
  %63 = call i32 @drm_fb_helper_single_add_all_connectors(i32* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %53, %49, %24, %16
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @HAS_DISPLAY(%struct.drm_i915_private*) #1

declare dso_local %struct.intel_fbdev* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @drm_fb_helper_prepare(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @intel_fbdev_init_bios(%struct.drm_device*, %struct.intel_fbdev*) #1

declare dso_local i32 @drm_fb_helper_init(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.intel_fbdev*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @drm_fb_helper_single_add_all_connectors(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
