; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c___intel_engine_init_ctx_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c___intel_engine_init_ctx_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i64, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.i915_wa_list = type { i32 }

@RENDER_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.i915_wa_list*, i8*)* @__intel_engine_init_ctx_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_engine_init_ctx_wa(%struct.intel_engine_cs* %0, %struct.i915_wa_list* %1, i8* %2) #0 {
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.i915_wa_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %4, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 2
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %7, align 8
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %12 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RENDER_CLASS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %125

17:                                               ; preds = %3
  %18 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %21 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @wa_init_start(%struct.i915_wa_list* %18, i8* %19, i32 %22)
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %25 = call i64 @IS_GEN(%struct.drm_i915_private* %24, i32 12)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %29 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %30 = call i32 @tgl_ctx_workarounds_init(%struct.intel_engine_cs* %28, %struct.i915_wa_list* %29)
  br label %122

31:                                               ; preds = %17
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %33 = call i64 @IS_GEN(%struct.drm_i915_private* %32, i32 11)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %37 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %38 = call i32 @icl_ctx_workarounds_init(%struct.intel_engine_cs* %36, %struct.i915_wa_list* %37)
  br label %121

39:                                               ; preds = %31
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %41 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %45 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %46 = call i32 @cnl_ctx_workarounds_init(%struct.intel_engine_cs* %44, %struct.i915_wa_list* %45)
  br label %120

47:                                               ; preds = %39
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %49 = call i64 @IS_COFFEELAKE(%struct.drm_i915_private* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %53 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %54 = call i32 @cfl_ctx_workarounds_init(%struct.intel_engine_cs* %52, %struct.i915_wa_list* %53)
  br label %119

55:                                               ; preds = %47
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %57 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %61 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %62 = call i32 @glk_ctx_workarounds_init(%struct.intel_engine_cs* %60, %struct.i915_wa_list* %61)
  br label %118

63:                                               ; preds = %55
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %65 = call i64 @IS_KABYLAKE(%struct.drm_i915_private* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %69 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %70 = call i32 @kbl_ctx_workarounds_init(%struct.intel_engine_cs* %68, %struct.i915_wa_list* %69)
  br label %117

71:                                               ; preds = %63
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %73 = call i64 @IS_BROXTON(%struct.drm_i915_private* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %77 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %78 = call i32 @bxt_ctx_workarounds_init(%struct.intel_engine_cs* %76, %struct.i915_wa_list* %77)
  br label %116

79:                                               ; preds = %71
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %81 = call i64 @IS_SKYLAKE(%struct.drm_i915_private* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %85 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %86 = call i32 @skl_ctx_workarounds_init(%struct.intel_engine_cs* %84, %struct.i915_wa_list* %85)
  br label %115

87:                                               ; preds = %79
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %89 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %93 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %94 = call i32 @chv_ctx_workarounds_init(%struct.intel_engine_cs* %92, %struct.i915_wa_list* %93)
  br label %114

95:                                               ; preds = %87
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %97 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %101 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %102 = call i32 @bdw_ctx_workarounds_init(%struct.intel_engine_cs* %100, %struct.i915_wa_list* %101)
  br label %113

103:                                              ; preds = %95
  %104 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %105 = call i32 @INTEL_GEN(%struct.drm_i915_private* %104)
  %106 = icmp slt i32 %105, 8
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %125

108:                                              ; preds = %103
  %109 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %110 = call i32 @INTEL_GEN(%struct.drm_i915_private* %109)
  %111 = call i32 @MISSING_CASE(i32 %110)
  br label %112

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112, %99
  br label %114

114:                                              ; preds = %113, %91
  br label %115

115:                                              ; preds = %114, %83
  br label %116

116:                                              ; preds = %115, %75
  br label %117

117:                                              ; preds = %116, %67
  br label %118

118:                                              ; preds = %117, %59
  br label %119

119:                                              ; preds = %118, %51
  br label %120

120:                                              ; preds = %119, %43
  br label %121

121:                                              ; preds = %120, %35
  br label %122

122:                                              ; preds = %121, %27
  %123 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %124 = call i32 @wa_init_finish(%struct.i915_wa_list* %123)
  br label %125

125:                                              ; preds = %122, %107, %16
  ret void
}

declare dso_local i32 @wa_init_start(%struct.i915_wa_list*, i8*, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @tgl_ctx_workarounds_init(%struct.intel_engine_cs*, %struct.i915_wa_list*) #1

declare dso_local i32 @icl_ctx_workarounds_init(%struct.intel_engine_cs*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_ctx_workarounds_init(%struct.intel_engine_cs*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @cfl_ctx_workarounds_init(%struct.intel_engine_cs*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @glk_ctx_workarounds_init(%struct.intel_engine_cs*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @kbl_ctx_workarounds_init(%struct.intel_engine_cs*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_BROXTON(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_ctx_workarounds_init(%struct.intel_engine_cs*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_SKYLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_ctx_workarounds_init(%struct.intel_engine_cs*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @chv_ctx_workarounds_init(%struct.intel_engine_cs*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @bdw_ctx_workarounds_init(%struct.intel_engine_cs*, %struct.i915_wa_list*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @wa_init_finish(%struct.i915_wa_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
