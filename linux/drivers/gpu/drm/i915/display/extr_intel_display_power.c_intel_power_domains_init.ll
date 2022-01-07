; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_power_domains_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_power_domains_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_3__, %struct.i915_power_domains }
%struct.TYPE_3__ = type { i32 }
%struct.i915_power_domains = type { i32, i32, i32 }

@i915_modparams = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@POWER_DOMAIN_NUM = common dso_local global i32 0, align 4
@intel_display_power_put_async_work = common dso_local global i32 0, align 4
@tgl_power_wells = common dso_local global i32 0, align 4
@icl_power_wells = common dso_local global i32 0, align 4
@cnl_power_wells = common dso_local global i32 0, align 4
@glk_power_wells = common dso_local global i32 0, align 4
@bxt_power_wells = common dso_local global i32 0, align 4
@skl_power_wells = common dso_local global i32 0, align 4
@chv_power_wells = common dso_local global i32 0, align 4
@bdw_power_wells = common dso_local global i32 0, align 4
@hsw_power_wells = common dso_local global i32 0, align 4
@vlv_power_wells = common dso_local global i32 0, align 4
@i830_power_wells = common dso_local global i32 0, align 4
@i9xx_always_on_power_well = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_power_domains_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.i915_power_domains*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 1
  store %struct.i915_power_domains* %6, %struct.i915_power_domains** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i915_modparams, i32 0, i32 1), align 4
  %9 = call i32 @sanitize_disable_power_well_option(%struct.drm_i915_private* %7, i32 %8)
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i915_modparams, i32 0, i32 1), align 4
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i915_modparams, i32 0, i32 0), align 4
  %12 = call i32 @get_allowed_dc_mask(%struct.drm_i915_private* %10, i32 %11)
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @POWER_DOMAIN_NUM, align 4
  %17 = icmp sgt i32 %16, 64
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  %20 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %21 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %20, i32 0, i32 2
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %24 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %23, i32 0, i32 1
  %25 = load i32, i32* @intel_display_power_put_async_work, align 4
  %26 = call i32 @INIT_DELAYED_WORK(i32* %24, i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = call i64 @IS_GEN(%struct.drm_i915_private* %27, i32 12)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %32 = load i32, i32* @tgl_power_wells, align 4
  %33 = call i32 @set_power_wells(%struct.i915_power_domains* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %137

34:                                               ; preds = %1
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %36 = call i64 @IS_GEN(%struct.drm_i915_private* %35, i32 11)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %40 = load i32, i32* @icl_power_wells, align 4
  %41 = call i32 @set_power_wells(%struct.i915_power_domains* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %136

42:                                               ; preds = %34
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %44 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %48 = load i32, i32* @cnl_power_wells, align 4
  %49 = call i32 @set_power_wells(%struct.i915_power_domains* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %51 = call i32 @IS_CNL_WITH_PORT_F(%struct.drm_i915_private* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %55 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 2
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %46
  br label %135

59:                                               ; preds = %42
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %61 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %65 = load i32, i32* @glk_power_wells, align 4
  %66 = call i32 @set_power_wells(%struct.i915_power_domains* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %134

67:                                               ; preds = %59
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %69 = call i64 @IS_BROXTON(%struct.drm_i915_private* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %73 = load i32, i32* @bxt_power_wells, align 4
  %74 = call i32 @set_power_wells(%struct.i915_power_domains* %72, i32 %73)
  store i32 %74, i32* %4, align 4
  br label %133

75:                                               ; preds = %67
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %77 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %81 = load i32, i32* @skl_power_wells, align 4
  %82 = call i32 @set_power_wells(%struct.i915_power_domains* %80, i32 %81)
  store i32 %82, i32* %4, align 4
  br label %132

83:                                               ; preds = %75
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %85 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %89 = load i32, i32* @chv_power_wells, align 4
  %90 = call i32 @set_power_wells(%struct.i915_power_domains* %88, i32 %89)
  store i32 %90, i32* %4, align 4
  br label %131

91:                                               ; preds = %83
  %92 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %93 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %97 = load i32, i32* @bdw_power_wells, align 4
  %98 = call i32 @set_power_wells(%struct.i915_power_domains* %96, i32 %97)
  store i32 %98, i32* %4, align 4
  br label %130

99:                                               ; preds = %91
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %101 = call i64 @IS_HASWELL(%struct.drm_i915_private* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %105 = load i32, i32* @hsw_power_wells, align 4
  %106 = call i32 @set_power_wells(%struct.i915_power_domains* %104, i32 %105)
  store i32 %106, i32* %4, align 4
  br label %129

107:                                              ; preds = %99
  %108 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %109 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %113 = load i32, i32* @vlv_power_wells, align 4
  %114 = call i32 @set_power_wells(%struct.i915_power_domains* %112, i32 %113)
  store i32 %114, i32* %4, align 4
  br label %128

115:                                              ; preds = %107
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %117 = call i64 @IS_I830(%struct.drm_i915_private* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %121 = load i32, i32* @i830_power_wells, align 4
  %122 = call i32 @set_power_wells(%struct.i915_power_domains* %120, i32 %121)
  store i32 %122, i32* %4, align 4
  br label %127

123:                                              ; preds = %115
  %124 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %125 = load i32, i32* @i9xx_always_on_power_well, align 4
  %126 = call i32 @set_power_wells(%struct.i915_power_domains* %124, i32 %125)
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %123, %119
  br label %128

128:                                              ; preds = %127, %111
  br label %129

129:                                              ; preds = %128, %103
  br label %130

130:                                              ; preds = %129, %95
  br label %131

131:                                              ; preds = %130, %87
  br label %132

132:                                              ; preds = %131, %79
  br label %133

133:                                              ; preds = %132, %71
  br label %134

134:                                              ; preds = %133, %63
  br label %135

135:                                              ; preds = %134, %58
  br label %136

136:                                              ; preds = %135, %38
  br label %137

137:                                              ; preds = %136, %30
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @sanitize_disable_power_well_option(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @get_allowed_dc_mask(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @set_power_wells(%struct.i915_power_domains*, i32) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_CNL_WITH_PORT_F(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROXTON(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I830(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
