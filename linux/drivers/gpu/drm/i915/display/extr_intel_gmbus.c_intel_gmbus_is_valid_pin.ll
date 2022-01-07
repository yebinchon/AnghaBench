; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_intel_gmbus_is_valid_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_intel_gmbus_is_valid_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.TYPE_2__ = type { i64 }

@PCH_ICP = common dso_local global i64 0, align 8
@gmbus_pins_icp = common dso_local global i32 0, align 4
@gmbus_pins_cnp = common dso_local global i32 0, align 4
@gmbus_pins_bxt = common dso_local global i32 0, align 4
@gmbus_pins_skl = common dso_local global i32 0, align 4
@gmbus_pins_bdw = common dso_local global i32 0, align 4
@gmbus_pins = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gmbus_is_valid_pin(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = call i64 @INTEL_PCH_TYPE(%struct.drm_i915_private* %6)
  %8 = load i64, i64* @PCH_ICP, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @gmbus_pins_icp, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  store i32 %12, i32* %5, align 4
  br label %48

13:                                               ; preds = %2
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = call i64 @HAS_PCH_CNP(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @gmbus_pins_cnp, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  store i32 %19, i32* %5, align 4
  br label %47

20:                                               ; preds = %13
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @gmbus_pins_bxt, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  store i32 %26, i32* %5, align 4
  br label %46

27:                                               ; preds = %20
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @gmbus_pins_skl, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  store i32 %33, i32* %5, align 4
  br label %45

34:                                               ; preds = %27
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @gmbus_pins_bdw, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  store i32 %40, i32* %5, align 4
  br label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @gmbus_pins, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %31
  br label %46

46:                                               ; preds = %45, %24
  br label %47

47:                                               ; preds = %46, %17
  br label %48

48:                                               ; preds = %47, %10
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call %struct.TYPE_2__* @get_gmbus_pin(%struct.drm_i915_private* %53, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %52, %48
  %60 = phi i1 [ false, %48 ], [ %58, %52 ]
  %61 = zext i1 %60 to i32
  ret i32 %61
}

declare dso_local i64 @INTEL_PCH_TYPE(%struct.drm_i915_private*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @HAS_PCH_CNP(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local %struct.TYPE_2__* @get_gmbus_pin(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
