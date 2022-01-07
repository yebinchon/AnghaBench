; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_gmbus_wait_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_gmbus_wait_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@GMBUS_IDLE_EN = common dso_local global i64 0, align 8
@GMBUS4 = common dso_local global i32 0, align 4
@GMBUS2 = common dso_local global i32 0, align 4
@GMBUS_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @gmbus_wait_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmbus_wait_idle(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  store i64 0, i64* %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = call i64 @HAS_GMBUS_IRQ(%struct.drm_i915_private* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @GMBUS_IDLE_EN, align 8
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = call i32 @add_wait_queue(i32* %14, i32* @wait)
  %16 = load i32, i32* @GMBUS4, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @I915_WRITE_FW(i32 %16, i64 %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 1
  %21 = load i32, i32* @GMBUS2, align 4
  %22 = load i32, i32* @GMBUS_ACTIVE, align 4
  %23 = call i32 @intel_wait_for_register_fw(i32* %20, i32 %21, i32 %22, i32 0, i32 10)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @GMBUS4, align 4
  %25 = call i32 @I915_WRITE_FW(i32 %24, i64 0)
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = call i32 @remove_wait_queue(i32* %27, i32* @wait)
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @HAS_GMBUS_IRQ(%struct.drm_i915_private*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @I915_WRITE_FW(i32, i64) #1

declare dso_local i32 @intel_wait_for_register_fw(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
