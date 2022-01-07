; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_rc6_residency_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_rc6_residency_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.TYPE_4__, %struct.intel_uncore }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i64* }
%struct.intel_uncore = type { i32 }

@GEN6_GT_GFX_RC6_LOCKED = common dso_local global i32 0, align 4
@FW_REG_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @intel_rc6_residency_ns(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_uncore*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 2
  store %struct.intel_uncore* %16, %struct.intel_uncore** %6, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = call i32 @HAS_RC6(%struct.drm_i915_private* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %144

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @i915_mmio_reg_offset(i32 %22)
  %24 = load i32, i32* @GEN6_GT_GFX_RC6_LOCKED, align 4
  %25 = call i32 @i915_mmio_reg_offset(i32 %24)
  %26 = sub nsw i32 %23, %25
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = call i32 @ARRAY_SIZE(i64* %35)
  %37 = icmp uge i32 %30, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON_ONCE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %21
  store i64 0, i64* %3, align 8
  br label %144

42:                                               ; preds = %21
  %43 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @FW_REG_READ, align 4
  %46 = call i32 @intel_uncore_forcewake_for_reg(%struct.intel_uncore* %43, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %48 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %47, i32 0, i32 0
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @intel_uncore_forcewake_get__locked(%struct.intel_uncore* %51, i32 %52)
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %55 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %42
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %59 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57, %42
  store i32 1000000, i32* %13, align 4
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %63 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %14, align 4
  %65 = call i64 @BIT_ULL(i32 40)
  store i64 %65, i64* %9, align 8
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @vlv_residency_raw(%struct.drm_i915_private* %66, i32 %67)
  store i64 %68, i64* %7, align 8
  br label %80

69:                                               ; preds = %57
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %71 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 10000, i32* %13, align 4
  store i32 12, i32* %14, align 4
  br label %75

74:                                               ; preds = %69
  store i32 1280, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %75

75:                                               ; preds = %74, %73
  %76 = call i64 @BIT_ULL(i32 32)
  store i64 %76, i64* %9, align 8
  %77 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @intel_uncore_read_fw(%struct.intel_uncore* %77, i32 %78)
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %75, %61
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %82 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %92 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %90, i64* %98, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %80
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %7, align 8
  %105 = sub nsw i64 %104, %103
  store i64 %105, i64* %7, align 8
  br label %112

106:                                              ; preds = %80
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %8, align 8
  %109 = sub nsw i64 %107, %108
  %110 = load i64, i64* %7, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %7, align 8
  br label %112

112:                                              ; preds = %106, %102
  %113 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %114 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %7, align 8
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %126 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  store i64 %124, i64* %132, align 8
  %133 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @intel_uncore_forcewake_put__locked(%struct.intel_uncore* %133, i32 %134)
  %136 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %137 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %136, i32 0, i32 0
  %138 = load i64, i64* %11, align 8
  %139 = call i32 @spin_unlock_irqrestore(i32* %137, i64 %138)
  %140 = load i64, i64* %7, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %14, align 4
  %143 = call i64 @mul_u64_u32_div(i64 %140, i32 %141, i32 %142)
  store i64 %143, i64* %3, align 8
  br label %144

144:                                              ; preds = %112, %41, %20
  %145 = load i64, i64* %3, align 8
  ret i64 %145
}

declare dso_local i32 @HAS_RC6(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @intel_uncore_forcewake_for_reg(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @intel_uncore_forcewake_get__locked(%struct.intel_uncore*, i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @BIT_ULL(i32) #1

declare dso_local i64 @vlv_residency_raw(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_uncore_read_fw(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_forcewake_put__locked(%struct.intel_uncore*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @mul_u64_u32_div(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
