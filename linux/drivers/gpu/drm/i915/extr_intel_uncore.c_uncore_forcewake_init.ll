; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_uncore_forcewake_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_uncore_forcewake_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { %struct.TYPE_2__, %struct.drm_i915_private* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@gen6 = common dso_local global i32 0, align 4
@__vlv_fw_ranges = common dso_local global i32 0, align 4
@fwtable = common dso_local global i32 0, align 4
@__chv_fw_ranges = common dso_local global i32 0, align 4
@gen8 = common dso_local global i32 0, align 4
@__gen9_fw_ranges = common dso_local global i32 0, align 4
@__gen11_fw_ranges = common dso_local global i32 0, align 4
@gen11_fwtable = common dso_local global i32 0, align 4
@i915_pmic_bus_access_notifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore*)* @uncore_forcewake_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uncore_forcewake_init(%struct.intel_uncore* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %3, align 8
  %6 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %7 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %6, i32 0, i32 1
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %10 = call i32 @intel_uncore_has_forcewake(%struct.intel_uncore* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @GEM_BUG_ON(i32 %13)
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %16 = call i32 @intel_uncore_fw_domains_init(%struct.intel_uncore* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %106

21:                                               ; preds = %1
  %22 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %23 = call i32 @forcewake_early_sanitize(%struct.intel_uncore* %22, i32 0)
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %24, i32 6, i32 7)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %29 = load i32, i32* @gen6, align 4
  %30 = call i32 @ASSIGN_WRITE_MMIO_VFUNCS(%struct.intel_uncore* %28, i32 %29)
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %36 = load i32, i32* @__vlv_fw_ranges, align 4
  %37 = call i32 @ASSIGN_FW_DOMAINS_TABLE(%struct.intel_uncore* %35, i32 %36)
  %38 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %39 = load i32, i32* @fwtable, align 4
  %40 = call i32 @ASSIGN_READ_MMIO_VFUNCS(%struct.intel_uncore* %38, i32 %39)
  br label %45

41:                                               ; preds = %27
  %42 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %43 = load i32, i32* @gen6, align 4
  %44 = call i32 @ASSIGN_READ_MMIO_VFUNCS(%struct.intel_uncore* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %34
  br label %98

46:                                               ; preds = %21
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %48 = call i64 @IS_GEN(%struct.drm_i915_private* %47, i32 8)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %52 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %56 = load i32, i32* @__chv_fw_ranges, align 4
  %57 = call i32 @ASSIGN_FW_DOMAINS_TABLE(%struct.intel_uncore* %55, i32 %56)
  %58 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %59 = load i32, i32* @fwtable, align 4
  %60 = call i32 @ASSIGN_WRITE_MMIO_VFUNCS(%struct.intel_uncore* %58, i32 %59)
  %61 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %62 = load i32, i32* @fwtable, align 4
  %63 = call i32 @ASSIGN_READ_MMIO_VFUNCS(%struct.intel_uncore* %61, i32 %62)
  br label %71

64:                                               ; preds = %50
  %65 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %66 = load i32, i32* @gen8, align 4
  %67 = call i32 @ASSIGN_WRITE_MMIO_VFUNCS(%struct.intel_uncore* %65, i32 %66)
  %68 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %69 = load i32, i32* @gen6, align 4
  %70 = call i32 @ASSIGN_READ_MMIO_VFUNCS(%struct.intel_uncore* %68, i32 %69)
  br label %71

71:                                               ; preds = %64, %54
  br label %97

72:                                               ; preds = %46
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %74 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %73, i32 9, i32 10)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %78 = load i32, i32* @__gen9_fw_ranges, align 4
  %79 = call i32 @ASSIGN_FW_DOMAINS_TABLE(%struct.intel_uncore* %77, i32 %78)
  %80 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %81 = load i32, i32* @fwtable, align 4
  %82 = call i32 @ASSIGN_WRITE_MMIO_VFUNCS(%struct.intel_uncore* %80, i32 %81)
  %83 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %84 = load i32, i32* @fwtable, align 4
  %85 = call i32 @ASSIGN_READ_MMIO_VFUNCS(%struct.intel_uncore* %83, i32 %84)
  br label %96

86:                                               ; preds = %72
  %87 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %88 = load i32, i32* @__gen11_fw_ranges, align 4
  %89 = call i32 @ASSIGN_FW_DOMAINS_TABLE(%struct.intel_uncore* %87, i32 %88)
  %90 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %91 = load i32, i32* @gen11_fwtable, align 4
  %92 = call i32 @ASSIGN_WRITE_MMIO_VFUNCS(%struct.intel_uncore* %90, i32 %91)
  %93 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %94 = load i32, i32* @gen11_fwtable, align 4
  %95 = call i32 @ASSIGN_READ_MMIO_VFUNCS(%struct.intel_uncore* %93, i32 %94)
  br label %96

96:                                               ; preds = %86, %76
  br label %97

97:                                               ; preds = %96, %71
  br label %98

98:                                               ; preds = %97, %45
  %99 = load i32, i32* @i915_pmic_bus_access_notifier, align 4
  %100 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %101 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %104 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %103, i32 0, i32 0
  %105 = call i32 @iosf_mbi_register_pmic_bus_access_notifier(%struct.TYPE_2__* %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %98, %19
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_uncore_has_forcewake(%struct.intel_uncore*) #1

declare dso_local i32 @intel_uncore_fw_domains_init(%struct.intel_uncore*) #1

declare dso_local i32 @forcewake_early_sanitize(%struct.intel_uncore*, i32) #1

declare dso_local i64 @IS_GEN_RANGE(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @ASSIGN_WRITE_MMIO_VFUNCS(%struct.intel_uncore*, i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @ASSIGN_FW_DOMAINS_TABLE(%struct.intel_uncore*, i32) #1

declare dso_local i32 @ASSIGN_READ_MMIO_VFUNCS(%struct.intel_uncore*, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @iosf_mbi_register_pmic_bus_access_notifier(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
