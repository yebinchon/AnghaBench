; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_get_gmbus_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_get_gmbus_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmbus_pin = type { i32 }
%struct.drm_i915_private = type { i32 }

@PCH_ICP = common dso_local global i64 0, align 8
@gmbus_pins_icp = common dso_local global %struct.gmbus_pin* null, align 8
@gmbus_pins_cnp = common dso_local global %struct.gmbus_pin* null, align 8
@gmbus_pins_bxt = common dso_local global %struct.gmbus_pin* null, align 8
@gmbus_pins_skl = common dso_local global %struct.gmbus_pin* null, align 8
@gmbus_pins_bdw = common dso_local global %struct.gmbus_pin* null, align 8
@gmbus_pins = common dso_local global %struct.gmbus_pin* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gmbus_pin* (%struct.drm_i915_private*, i32)* @get_gmbus_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gmbus_pin* @get_gmbus_pin(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.gmbus_pin*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %7 = call i64 @INTEL_PCH_TYPE(%struct.drm_i915_private* %6)
  %8 = load i64, i64* @PCH_ICP, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.gmbus_pin*, %struct.gmbus_pin** @gmbus_pins_icp, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.gmbus_pin, %struct.gmbus_pin* %11, i64 %13
  store %struct.gmbus_pin* %14, %struct.gmbus_pin** %3, align 8
  br label %56

15:                                               ; preds = %2
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %17 = call i64 @HAS_PCH_CNP(%struct.drm_i915_private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.gmbus_pin*, %struct.gmbus_pin** @gmbus_pins_cnp, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.gmbus_pin, %struct.gmbus_pin* %20, i64 %22
  store %struct.gmbus_pin* %23, %struct.gmbus_pin** %3, align 8
  br label %56

24:                                               ; preds = %15
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.gmbus_pin*, %struct.gmbus_pin** @gmbus_pins_bxt, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.gmbus_pin, %struct.gmbus_pin* %29, i64 %31
  store %struct.gmbus_pin* %32, %struct.gmbus_pin** %3, align 8
  br label %56

33:                                               ; preds = %24
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %35 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.gmbus_pin*, %struct.gmbus_pin** @gmbus_pins_skl, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.gmbus_pin, %struct.gmbus_pin* %38, i64 %40
  store %struct.gmbus_pin* %41, %struct.gmbus_pin** %3, align 8
  br label %56

42:                                               ; preds = %33
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %44 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.gmbus_pin*, %struct.gmbus_pin** @gmbus_pins_bdw, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.gmbus_pin, %struct.gmbus_pin* %47, i64 %49
  store %struct.gmbus_pin* %50, %struct.gmbus_pin** %3, align 8
  br label %56

51:                                               ; preds = %42
  %52 = load %struct.gmbus_pin*, %struct.gmbus_pin** @gmbus_pins, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.gmbus_pin, %struct.gmbus_pin* %52, i64 %54
  store %struct.gmbus_pin* %55, %struct.gmbus_pin** %3, align 8
  br label %56

56:                                               ; preds = %51, %46, %37, %28, %19, %10
  %57 = load %struct.gmbus_pin*, %struct.gmbus_pin** %3, align 8
  ret %struct.gmbus_pin* %57
}

declare dso_local i64 @INTEL_PCH_TYPE(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_CNP(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
