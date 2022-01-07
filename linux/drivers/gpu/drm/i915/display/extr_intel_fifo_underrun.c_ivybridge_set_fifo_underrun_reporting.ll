; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fifo_underrun.c_ivybridge_set_fifo_underrun_reporting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fifo_underrun.c_ivybridge_set_fifo_underrun_reporting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32 }

@GEN7_ERR_INT = common dso_local global i32 0, align 4
@DE_ERR_INT_IVB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"uncleared fifo underrun on pipe %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32, i32)* @ivybridge_set_fifo_underrun_reporting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivybridge_set_fifo_underrun_reporting(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = load i32, i32* @GEN7_ERR_INT, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ERR_INT_FIFO_UNDERRUN(i32 %16)
  %18 = call i32 @I915_WRITE(i32 %15, i32 %17)
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = call i32 @ivb_can_enable_err_int(%struct.drm_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %45

23:                                               ; preds = %14
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %25 = load i32, i32* @DE_ERR_INT_IVB, align 4
  %26 = call i32 @ilk_enable_display_irq(%struct.drm_i915_private* %24, i32 %25)
  br label %45

27:                                               ; preds = %4
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %29 = load i32, i32* @DE_ERR_INT_IVB, align 4
  %30 = call i32 @ilk_disable_display_irq(%struct.drm_i915_private* %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i32, i32* @GEN7_ERR_INT, align 4
  %35 = call i32 @I915_READ(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ERR_INT_FIFO_UNDERRUN(i32 %36)
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @pipe_name(i32 %41)
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %33, %27
  br label %45

45:                                               ; preds = %22, %44, %23
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @ERR_INT_FIFO_UNDERRUN(i32) #1

declare dso_local i32 @ivb_can_enable_err_int(%struct.drm_device*) #1

declare dso_local i32 @ilk_enable_display_irq(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ilk_disable_display_irq(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
