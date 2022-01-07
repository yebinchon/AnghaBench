; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_intel_display.c_mdfld_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_intel_display.c_mdfld_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrst_limit_t = type { i32 }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32 }

@INTEL_OUTPUT_MIPI = common dso_local global i32 0, align 4
@INTEL_OUTPUT_MIPI2 = common dso_local global i32 0, align 4
@ksel = common dso_local global i64 0, align 8
@KSEL_CRYSTAL_19 = common dso_local global i64 0, align 8
@KSEL_BYPASS_19 = common dso_local global i64 0, align 8
@mdfld_limits = common dso_local global %struct.mrst_limit_t* null, align 8
@MDFLD_LIMT_DSIPLL_19 = common dso_local global i64 0, align 8
@KSEL_BYPASS_25 = common dso_local global i64 0, align 8
@MDFLD_LIMT_DSIPLL_25 = common dso_local global i64 0, align 8
@KSEL_BYPASS_83_100 = common dso_local global i64 0, align 8
@MDFLD_LIMT_DSIPLL_83 = common dso_local global i64 0, align 8
@MDFLD_LIMT_DSIPLL_100 = common dso_local global i64 0, align 8
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@MDFLD_LIMT_DPLL_19 = common dso_local global i64 0, align 8
@MDFLD_LIMT_DPLL_25 = common dso_local global i64 0, align 8
@MDFLD_LIMT_DPLL_83 = common dso_local global i64 0, align 8
@MDFLD_LIMT_DPLL_100 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"mdfld_limit Wrong display type.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mrst_limit_t* (%struct.drm_crtc*)* @mdfld_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mrst_limit_t* @mdfld_limit(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.mrst_limit_t*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_psb_private*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  store %struct.mrst_limit_t* null, %struct.mrst_limit_t** %3, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 0
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %10, align 8
  store %struct.drm_psb_private* %11, %struct.drm_psb_private** %5, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = load i32, i32* @INTEL_OUTPUT_MIPI, align 4
  %14 = call i64 @gma_pipe_has_type(%struct.drm_crtc* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %18 = load i32, i32* @INTEL_OUTPUT_MIPI2, align 4
  %19 = call i64 @gma_pipe_has_type(%struct.drm_crtc* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %76

21:                                               ; preds = %16, %1
  %22 = load i64, i64* @ksel, align 8
  %23 = load i64, i64* @KSEL_CRYSTAL_19, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @ksel, align 8
  %27 = load i64, i64* @KSEL_BYPASS_19, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %21
  %30 = load %struct.mrst_limit_t*, %struct.mrst_limit_t** @mdfld_limits, align 8
  %31 = load i64, i64* @MDFLD_LIMT_DSIPLL_19, align 8
  %32 = getelementptr inbounds %struct.mrst_limit_t, %struct.mrst_limit_t* %30, i64 %31
  store %struct.mrst_limit_t* %32, %struct.mrst_limit_t** %3, align 8
  br label %75

33:                                               ; preds = %25
  %34 = load i64, i64* @ksel, align 8
  %35 = load i64, i64* @KSEL_BYPASS_25, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.mrst_limit_t*, %struct.mrst_limit_t** @mdfld_limits, align 8
  %39 = load i64, i64* @MDFLD_LIMT_DSIPLL_25, align 8
  %40 = getelementptr inbounds %struct.mrst_limit_t, %struct.mrst_limit_t* %38, i64 %39
  store %struct.mrst_limit_t* %40, %struct.mrst_limit_t** %3, align 8
  br label %74

41:                                               ; preds = %33
  %42 = load i64, i64* @ksel, align 8
  %43 = load i64, i64* @KSEL_BYPASS_83_100, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %47 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 166
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.mrst_limit_t*, %struct.mrst_limit_t** @mdfld_limits, align 8
  %52 = load i64, i64* @MDFLD_LIMT_DSIPLL_83, align 8
  %53 = getelementptr inbounds %struct.mrst_limit_t, %struct.mrst_limit_t* %51, i64 %52
  store %struct.mrst_limit_t* %53, %struct.mrst_limit_t** %3, align 8
  br label %73

54:                                               ; preds = %45, %41
  %55 = load i64, i64* @ksel, align 8
  %56 = load i64, i64* @KSEL_BYPASS_83_100, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %60 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 100
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %65 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 200
  br i1 %67, label %68, label %72

68:                                               ; preds = %63, %58
  %69 = load %struct.mrst_limit_t*, %struct.mrst_limit_t** @mdfld_limits, align 8
  %70 = load i64, i64* @MDFLD_LIMT_DSIPLL_100, align 8
  %71 = getelementptr inbounds %struct.mrst_limit_t, %struct.mrst_limit_t* %69, i64 %70
  store %struct.mrst_limit_t* %71, %struct.mrst_limit_t** %3, align 8
  br label %72

72:                                               ; preds = %68, %63, %54
  br label %73

73:                                               ; preds = %72, %50
  br label %74

74:                                               ; preds = %73, %37
  br label %75

75:                                               ; preds = %74, %29
  br label %142

76:                                               ; preds = %16
  %77 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %78 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %79 = call i64 @gma_pipe_has_type(%struct.drm_crtc* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %136

81:                                               ; preds = %76
  %82 = load i64, i64* @ksel, align 8
  %83 = load i64, i64* @KSEL_CRYSTAL_19, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* @ksel, align 8
  %87 = load i64, i64* @KSEL_BYPASS_19, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85, %81
  %90 = load %struct.mrst_limit_t*, %struct.mrst_limit_t** @mdfld_limits, align 8
  %91 = load i64, i64* @MDFLD_LIMT_DPLL_19, align 8
  %92 = getelementptr inbounds %struct.mrst_limit_t, %struct.mrst_limit_t* %90, i64 %91
  store %struct.mrst_limit_t* %92, %struct.mrst_limit_t** %3, align 8
  br label %135

93:                                               ; preds = %85
  %94 = load i64, i64* @ksel, align 8
  %95 = load i64, i64* @KSEL_BYPASS_25, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.mrst_limit_t*, %struct.mrst_limit_t** @mdfld_limits, align 8
  %99 = load i64, i64* @MDFLD_LIMT_DPLL_25, align 8
  %100 = getelementptr inbounds %struct.mrst_limit_t, %struct.mrst_limit_t* %98, i64 %99
  store %struct.mrst_limit_t* %100, %struct.mrst_limit_t** %3, align 8
  br label %134

101:                                              ; preds = %93
  %102 = load i64, i64* @ksel, align 8
  %103 = load i64, i64* @KSEL_BYPASS_83_100, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %107 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 166
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.mrst_limit_t*, %struct.mrst_limit_t** @mdfld_limits, align 8
  %112 = load i64, i64* @MDFLD_LIMT_DPLL_83, align 8
  %113 = getelementptr inbounds %struct.mrst_limit_t, %struct.mrst_limit_t* %111, i64 %112
  store %struct.mrst_limit_t* %113, %struct.mrst_limit_t** %3, align 8
  br label %133

114:                                              ; preds = %105, %101
  %115 = load i64, i64* @ksel, align 8
  %116 = load i64, i64* @KSEL_BYPASS_83_100, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %120 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 100
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %125 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 200
  br i1 %127, label %128, label %132

128:                                              ; preds = %123, %118
  %129 = load %struct.mrst_limit_t*, %struct.mrst_limit_t** @mdfld_limits, align 8
  %130 = load i64, i64* @MDFLD_LIMT_DPLL_100, align 8
  %131 = getelementptr inbounds %struct.mrst_limit_t, %struct.mrst_limit_t* %129, i64 %130
  store %struct.mrst_limit_t* %131, %struct.mrst_limit_t** %3, align 8
  br label %132

132:                                              ; preds = %128, %123, %114
  br label %133

133:                                              ; preds = %132, %110
  br label %134

134:                                              ; preds = %133, %97
  br label %135

135:                                              ; preds = %134, %89
  br label %141

136:                                              ; preds = %76
  store %struct.mrst_limit_t* null, %struct.mrst_limit_t** %3, align 8
  %137 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %138 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @dev_dbg(i32 %139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %141

141:                                              ; preds = %136, %135
  br label %142

142:                                              ; preds = %141, %75
  %143 = load %struct.mrst_limit_t*, %struct.mrst_limit_t** %3, align 8
  ret %struct.mrst_limit_t* %143
}

declare dso_local i64 @gma_pipe_has_type(%struct.drm_crtc*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
