; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_update_ring_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_update_ring_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i32, i32 }
%struct.cpufreq_policy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@tsc_khz = common dso_local global i32 0, align 4
@DCLK = common dso_local global i32 0, align 4
@GEN9_FREQ_SCALER = common dso_local global i32 0, align 4
@GEN6_PCODE_WRITE_MIN_FREQ_TABLE = common dso_local global i32 0, align 4
@GEN6_PCODE_FREQ_IA_RATIO_SHIFT = common dso_local global i32 0, align 4
@GEN6_PCODE_FREQ_RING_RATIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @gen6_update_ring_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen6_update_ring_freq(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_rps*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cpufreq_policy*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.intel_rps* %17, %struct.intel_rps** %3, align 8
  store i32 15, i32* %4, align 4
  store i32 180, i32* %5, align 4
  %18 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %19 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %18, i32 0, i32 2
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %22 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %25 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ule i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %138

29:                                               ; preds = %1
  %30 = call %struct.cpufreq_policy* @cpufreq_cpu_get(i32 0)
  store %struct.cpufreq_policy* %30, %struct.cpufreq_policy** %11, align 8
  %31 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %11, align 8
  %32 = icmp ne %struct.cpufreq_policy* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %11, align 8
  %35 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %11, align 8
  %39 = call i32 @cpufreq_cpu_put(%struct.cpufreq_policy* %38)
  br label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @tsc_khz, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %33
  %43 = load i32, i32* %7, align 4
  %44 = udiv i32 %43, 1000
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @DCLK, align 4
  %46 = call i32 @I915_READ(i32 %45)
  %47 = and i32 %46, 15
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @mult_frac(i32 %48, i32 8, i32 3)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %51 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %54 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %57 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %42
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %61 = call i32 @INTEL_GEN(%struct.drm_i915_private* %60)
  %62 = icmp sge i32 %61, 10
  br i1 %62, label %63, label %70

63:                                               ; preds = %59, %42
  %64 = load i32, i32* @GEN9_FREQ_SCALER, align 4
  %65 = load i32, i32* %10, align 4
  %66 = udiv i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* @GEN9_FREQ_SCALER, align 4
  %68 = load i32, i32* %9, align 4
  %69 = udiv i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %63, %59
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %135, %70
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp uge i32 %73, %74
  br i1 %75, label %76, label %138

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sub i32 %77, %78
  store i32 %79, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %81 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %76
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %85 = call i32 @INTEL_GEN(%struct.drm_i915_private* %84)
  %86 = icmp sge i32 %85, 10
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %76
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %14, align 4
  br label %122

89:                                               ; preds = %83
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %91 = call i32 @INTEL_GEN(%struct.drm_i915_private* %90)
  %92 = icmp sge i32 %91, 8
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @max(i32 %94, i32 %95)
  store i32 %96, i32* %14, align 4
  br label %121

97:                                               ; preds = %89
  %98 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %99 = call i64 @IS_HASWELL(%struct.drm_i915_private* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @mult_frac(i32 %102, i32 5, i32 4)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @max(i32 %104, i32 %105)
  store i32 %106, i32* %14, align 4
  br label %120

107:                                              ; preds = %97
  %108 = load i32, i32* %6, align 4
  %109 = icmp ult i32 %108, 15
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 800, i32* %13, align 4
  br label %117

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %12, align 4
  %114 = mul nsw i32 %113, 180
  %115 = sdiv i32 %114, 2
  %116 = sub i32 %112, %115
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %111, %110
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @DIV_ROUND_CLOSEST(i32 %118, i32 100)
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %117, %101
  br label %121

121:                                              ; preds = %120, %93
  br label %122

122:                                              ; preds = %121, %87
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %124 = load i32, i32* @GEN6_PCODE_WRITE_MIN_FREQ_TABLE, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @GEN6_PCODE_FREQ_IA_RATIO_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @GEN6_PCODE_FREQ_RING_RATIO_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = or i32 %127, %130
  %132 = load i32, i32* %6, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @sandybridge_pcode_write(%struct.drm_i915_private* %123, i32 %124, i32 %133)
  br label %135

135:                                              ; preds = %122
  %136 = load i32, i32* %6, align 4
  %137 = add i32 %136, -1
  store i32 %137, i32* %6, align 4
  br label %72

138:                                              ; preds = %28, %72
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.cpufreq_policy* @cpufreq_cpu_get(i32) #1

declare dso_local i32 @cpufreq_cpu_put(%struct.cpufreq_policy*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @mult_frac(i32, i32, i32) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @sandybridge_pcode_write(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
