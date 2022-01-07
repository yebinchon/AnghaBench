; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_init_rps_frequencies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_init_rps_frequencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i32, i32, i32, i32 }

@BXT_RP_STATE_CAP = common dso_local global i32 0, align 4
@GEN6_RP_STATE_CAP = common dso_local global i32 0, align 4
@HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@GEN9_FREQ_SCALER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @gen6_init_rps_frequencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen6_init_rps_frequencies(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_rps*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.intel_rps* %9, %struct.intel_rps** %3, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load i32, i32* @BXT_RP_STATE_CAP, align 4
  %15 = call i32 @I915_READ(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %20 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %25 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = ashr i32 %26, 0
  %28 = and i32 %27, 255
  %29 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %30 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  br label %49

31:                                               ; preds = %1
  %32 = load i32, i32* @GEN6_RP_STATE_CAP, align 4
  %33 = call i32 @I915_READ(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 0
  %36 = and i32 %35, 255
  %37 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %38 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  %42 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %43 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %48 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %31, %13
  %50 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %51 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %54 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %56 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %59 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %61 = call i64 @IS_HASWELL(%struct.drm_i915_private* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %49
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %65 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %69 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %73 = call i32 @INTEL_GEN(%struct.drm_i915_private* %72)
  %74 = icmp sge i32 %73, 10
  br i1 %74, label %75, label %95

75:                                               ; preds = %71, %67, %63, %49
  store i32 0, i32* %6, align 4
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %77 = load i32, i32* @HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL, align 4
  %78 = call i64 @sandybridge_pcode_read(%struct.drm_i915_private* %76, i32 %77, i32* %6, i32* null)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load i32, i32* @u8, align 4
  %82 = load i32, i32* %6, align 4
  %83 = ashr i32 %82, 8
  %84 = and i32 %83, 255
  %85 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %86 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %89 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @clamp_t(i32 %81, i32 %84, i32 %87, i32 %90)
  %92 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %93 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %80, %75
  br label %95

95:                                               ; preds = %94, %71
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %97 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %101 = call i32 @INTEL_GEN(%struct.drm_i915_private* %100)
  %102 = icmp sge i32 %101, 10
  br i1 %102, label %103, label %129

103:                                              ; preds = %99, %95
  %104 = load i32, i32* @GEN9_FREQ_SCALER, align 4
  %105 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %106 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* @GEN9_FREQ_SCALER, align 4
  %110 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %111 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* @GEN9_FREQ_SCALER, align 4
  %115 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %116 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* @GEN9_FREQ_SCALER, align 4
  %120 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %121 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* @GEN9_FREQ_SCALER, align 4
  %125 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %126 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %103, %99
  ret void
}

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @sandybridge_pcode_read(%struct.drm_i915_private*, i32, i32*, i32*) #1

declare dso_local i32 @clamp_t(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
