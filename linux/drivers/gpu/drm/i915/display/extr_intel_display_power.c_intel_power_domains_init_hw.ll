; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_power_domains_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_power_domains_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { %struct.i915_power_domains }
%struct.i915_power_domains = type { i32, i32, i32 }

@POWER_DOMAIN_INIT = common dso_local global i32 0, align 4
@i915_modparams = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_power_domains_init_hw(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_power_domains*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  store %struct.i915_power_domains* %7, %struct.i915_power_domains** %5, align 8
  %8 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %9 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = call i32 @INTEL_GEN(%struct.drm_i915_private* %10)
  %12 = icmp sge i32 %11, 11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @icl_display_core_init(%struct.drm_i915_private* %14, i32 %15)
  br label %110

17:                                               ; preds = %2
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @cnl_display_core_init(%struct.drm_i915_private* %22, i32 %23)
  br label %109

25:                                               ; preds = %17
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %27 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @skl_display_core_init(%struct.drm_i915_private* %30, i32 %31)
  br label %108

33:                                               ; preds = %25
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @bxt_display_core_init(%struct.drm_i915_private* %38, i32 %39)
  br label %107

41:                                               ; preds = %33
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %47 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %46, i32 0, i32 2
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = call i32 @chv_phy_control_init(%struct.drm_i915_private* %49)
  %51 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %52 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %51, i32 0, i32 2
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = call i32 @assert_isp_power_gated(%struct.drm_i915_private* %54)
  br label %106

56:                                               ; preds = %41
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %58 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %62 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %61, i32 0, i32 2
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = call i32 @vlv_cmnlane_wa(%struct.drm_i915_private* %64)
  %66 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %67 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %66, i32 0, i32 2
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %70 = call i32 @assert_ved_power_gated(%struct.drm_i915_private* %69)
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %72 = call i32 @assert_isp_power_gated(%struct.drm_i915_private* %71)
  br label %105

73:                                               ; preds = %56
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %75 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %79 = call i64 @IS_HASWELL(%struct.drm_i915_private* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %77, %73
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %83 = call i32 @hsw_assert_cdclk(%struct.drm_i915_private* %82)
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %86 = call i32 @HAS_PCH_NOP(%struct.drm_i915_private* %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @intel_pch_reset_handshake(%struct.drm_i915_private* %84, i32 %89)
  br label %104

91:                                               ; preds = %77
  %92 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %93 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %97 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %98 = call i32 @HAS_PCH_NOP(%struct.drm_i915_private* %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @intel_pch_reset_handshake(%struct.drm_i915_private* %96, i32 %101)
  br label %103

103:                                              ; preds = %95, %91
  br label %104

104:                                              ; preds = %103, %81
  br label %105

105:                                              ; preds = %104, %60
  br label %106

106:                                              ; preds = %105, %45
  br label %107

107:                                              ; preds = %106, %37
  br label %108

108:                                              ; preds = %107, %29
  br label %109

109:                                              ; preds = %108, %21
  br label %110

110:                                              ; preds = %109, %13
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %112 = load i32, i32* @POWER_DOMAIN_INIT, align 4
  %113 = call i32 @intel_display_power_get(%struct.drm_i915_private* %111, i32 %112)
  %114 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %115 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i915_modparams, i32 0, i32 0), align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %110
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %120 = load i32, i32* @POWER_DOMAIN_INIT, align 4
  %121 = call i32 @intel_display_power_get(%struct.drm_i915_private* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %110
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %124 = call i32 @intel_power_domains_sync_hw(%struct.drm_i915_private* %123)
  %125 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %126 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %125, i32 0, i32 0
  store i32 0, i32* %126, align 4
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @icl_display_core_init(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_display_core_init(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_display_core_init(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_display_core_init(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @chv_phy_control_init(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @assert_isp_power_gated(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_cmnlane_wa(%struct.drm_i915_private*) #1

declare dso_local i32 @assert_ved_power_gated(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @hsw_assert_cdclk(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_pch_reset_handshake(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @HAS_PCH_NOP(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_power_domains_sync_hw(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
