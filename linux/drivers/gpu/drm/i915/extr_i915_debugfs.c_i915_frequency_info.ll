; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_frequency_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_frequency_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drm_i915_private = type { i32, i32, i32, i32, %struct.TYPE_7__, %struct.intel_uncore, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_uncore = type { i32 }
%struct.TYPE_8__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@MEMSWCTL = common dso_local global i32 0, align 4
@MEMSTAT_ILK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Requested P-state: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Requested VID: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Current VID: %d\0A\00", align 1
@MEMSTAT_VID_MASK = common dso_local global i32 0, align 4
@MEMSTAT_VID_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Current P-state: %d\0A\00", align 1
@MEMSTAT_PSTATE_MASK = common dso_local global i32 0, align 4
@MEMSTAT_PSTATE_SHIFT = common dso_local global i32 0, align 4
@GEN6_RP_CONTROL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Video Turbo Mode: %s\0A\00", align 1
@GEN6_RP_MEDIA_TURBO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"HW control enabled: %s\0A\00", align 1
@GEN6_RP_ENABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"SW control enabled: %s\0A\00", align 1
@GEN6_RP_MEDIA_MODE_MASK = common dso_local global i32 0, align 4
@GEN6_RP_MEDIA_SW_MODE = common dso_local global i32 0, align 4
@PUNIT_REG_GPU_FREQ_STS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"PUNIT_REG_GPU_FREQ_STS: 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"DDR freq: %d MHz\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"actual GPU freq: %d MHz\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"current GPU freq: %d MHz\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"max GPU freq: %d MHz\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"min GPU freq: %d MHz\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"idle GPU freq: %d MHz\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"efficient (RPe) frequency: %d MHz\0A\00", align 1
@GEN6_RP_STATE_LIMITS = common dso_local global i32 0, align 4
@BXT_RP_STATE_CAP = common dso_local global i32 0, align 4
@BXT_GT_PERF_STATUS = common dso_local global i32 0, align 4
@GEN6_RP_STATE_CAP = common dso_local global i32 0, align 4
@GEN6_GT_PERF_STATUS = common dso_local global i32 0, align 4
@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@GEN6_RPNSWREQ = common dso_local global i32 0, align 4
@GEN6_TURBO_DISABLE = common dso_local global i32 0, align 4
@GEN6_RP_UP_THRESHOLD = common dso_local global i32 0, align 4
@GEN6_RP_DOWN_THRESHOLD = common dso_local global i32 0, align 4
@GEN6_RPSTAT1 = common dso_local global i32 0, align 4
@GEN6_RP_CUR_UP_EI = common dso_local global i32 0, align 4
@GEN6_CURICONT_MASK = common dso_local global i32 0, align 4
@GEN6_RP_CUR_UP = common dso_local global i32 0, align 4
@GEN6_CURBSYTAVG_MASK = common dso_local global i32 0, align 4
@GEN6_RP_PREV_UP = common dso_local global i32 0, align 4
@GEN6_RP_CUR_DOWN_EI = common dso_local global i32 0, align 4
@GEN6_CURIAVG_MASK = common dso_local global i32 0, align 4
@GEN6_RP_CUR_DOWN = common dso_local global i32 0, align 4
@GEN6_RP_PREV_DOWN = common dso_local global i32 0, align 4
@GEN11_GPM_WGBOXPERF_INTR_ENABLE = common dso_local global i32 0, align 4
@GEN11_GPM_WGBOXPERF_INTR_MASK = common dso_local global i32 0, align 4
@GEN6_PMIER = common dso_local global i32 0, align 4
@GEN6_PMIMR = common dso_local global i32 0, align 4
@GEN6_PMISR = common dso_local global i32 0, align 4
@GEN6_PMIIR = common dso_local global i32 0, align 4
@GEN6_PMINTRMSK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [39 x i8] c"PM IER=0x%08x IMR=0x%08x, MASK=0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"PM ISR=0x%08x IIR=0x%08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"pm_intrmsk_mbz: 0x%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"GT_PERF_STATUS: 0x%08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Render p-state ratio: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Render p-state VID: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"Render p-state limit: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"RPSTAT1: 0x%08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"RPMODECTL: 0x%08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"RPINCLIMIT: 0x%08x\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"RPDECLIMIT: 0x%08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"RPNSWREQ: %dMHz\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"CAGF: %dMHz\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"RP CUR UP EI: %d (%dus)\0A\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"RP CUR UP: %d (%dus)\0A\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"RP PREV UP: %d (%dus)\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Up threshold: %d%%\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"RP CUR DOWN EI: %d (%dus)\0A\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"RP CUR DOWN: %d (%dus)\0A\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"RP PREV DOWN: %d (%dus)\0A\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Down threshold: %d%%\0A\00", align 1
@GEN9_FREQ_SCALER = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [31 x i8] c"Lowest (RPN) frequency: %dMHz\0A\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"Nominal (RP1) frequency: %dMHz\0A\00", align 1
@.str.38 = private unnamed_addr constant [44 x i8] c"Max non-overclocked (RP0) frequency: %dMHz\0A\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"Max overclocked frequency: %dMHz\0A\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"Current freq: %d MHz\0A\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"Actual freq: %d MHz\0A\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"Idle freq: %d MHz\0A\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"Min freq: %d MHz\0A\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"Boost freq: %d MHz\0A\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"Max freq: %d MHz\0A\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"no P-state info available\0A\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"Current CD clock frequency: %d kHz\0A\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"Max CD clock frequency: %d kHz\0A\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"Max pixel clock frequency: %d kHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_frequency_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_frequency_info(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_uncore*, align 8
  %7 = alloca %struct.intel_rps*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.drm_i915_private* @node_to_i915(i32 %37)
  store %struct.drm_i915_private* %38, %struct.drm_i915_private** %5, align 8
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 5
  store %struct.intel_uncore* %40, %struct.intel_uncore** %6, align 8
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %42 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store %struct.intel_rps* %43, %struct.intel_rps** %7, align 8
  store i32 0, i32* %9, align 4
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %45 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %44, i32 0, i32 3
  %46 = call i32 @intel_runtime_pm_get(i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %48 = call i64 @IS_GEN(%struct.drm_i915_private* %47, i32 5)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %2
  %51 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %52 = load i32, i32* @MEMSWCTL, align 4
  %53 = call i32 @intel_uncore_read16(%struct.intel_uncore* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %55 = load i32, i32* @MEMSTAT_ILK, align 4
  %56 = call i32 @intel_uncore_read16(%struct.intel_uncore* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 15
  %61 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, 63
  %65 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @MEMSTAT_VID_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @MEMSTAT_VID_SHIFT, align 4
  %71 = ashr i32 %69, %70
  %72 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @MEMSTAT_PSTATE_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @MEMSTAT_PSTATE_SHIFT, align 4
  %78 = ashr i32 %76, %77
  %79 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %568

80:                                               ; preds = %2
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %82 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %86 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %169

88:                                               ; preds = %84, %80
  %89 = load i32, i32* @GEN6_RP_CONTROL, align 4
  %90 = call i32 @I915_READ(i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @GEN6_RP_MEDIA_TURBO, align 4
  %94 = and i32 %92, %93
  %95 = call i32 @yesno(i32 %94)
  %96 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @GEN6_RP_ENABLE, align 4
  %100 = and i32 %98, %99
  %101 = call i32 @yesno(i32 %100)
  %102 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @GEN6_RP_MEDIA_MODE_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @GEN6_RP_MEDIA_SW_MODE, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @yesno(i32 %109)
  %111 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %113 = call i32 @vlv_punit_get(%struct.drm_i915_private* %112)
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %115 = load i32, i32* @PUNIT_REG_GPU_FREQ_STS, align 4
  %116 = call i32 @vlv_punit_read(%struct.drm_i915_private* %114, i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %118 = call i32 @vlv_punit_put(%struct.drm_i915_private* %117)
  %119 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  %122 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %124 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %125)
  %127 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %128 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %129 = load i32, i32* %13, align 4
  %130 = ashr i32 %129, 8
  %131 = and i32 %130, 255
  %132 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %128, i32 %131)
  %133 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %132)
  %134 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %135 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %136 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %137 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %135, i32 %138)
  %140 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %139)
  %141 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %142 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %143 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %144 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %142, i32 %145)
  %147 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %146)
  %148 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %149 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %150 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %151 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %149, i32 %152)
  %154 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %148, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %153)
  %155 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %156 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %157 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %158 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %156, i32 %159)
  %161 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %155, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %160)
  %162 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %163 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %164 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %165 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %163, i32 %166)
  %168 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %162, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32 %167)
  br label %567

169:                                              ; preds = %84
  %170 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %171 = call i32 @INTEL_GEN(%struct.drm_i915_private* %170)
  %172 = icmp sge i32 %171, 6
  br i1 %172, label %173, label %563

173:                                              ; preds = %169
  %174 = load i32, i32* @GEN6_RP_STATE_LIMITS, align 4
  %175 = call i32 @I915_READ(i32 %174)
  store i32 %175, i32* %14, align 4
  %176 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %177 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %173
  %180 = load i32, i32* @BXT_RP_STATE_CAP, align 4
  %181 = call i32 @I915_READ(i32 %180)
  store i32 %181, i32* %16, align 4
  %182 = load i32, i32* @BXT_GT_PERF_STATUS, align 4
  %183 = call i32 @I915_READ(i32 %182)
  store i32 %183, i32* %15, align 4
  br label %189

184:                                              ; preds = %173
  %185 = load i32, i32* @GEN6_RP_STATE_CAP, align 4
  %186 = call i32 @I915_READ(i32 %185)
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* @GEN6_GT_PERF_STATUS, align 4
  %188 = call i32 @I915_READ(i32 %187)
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %184, %179
  %190 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %191 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %190, i32 0, i32 5
  %192 = load i32, i32* @FORCEWAKE_ALL, align 4
  %193 = call i32 @intel_uncore_forcewake_get(%struct.intel_uncore* %191, i32 %192)
  %194 = load i32, i32* @GEN6_RPNSWREQ, align 4
  %195 = call i32 @I915_READ(i32 %194)
  store i32 %195, i32* %22, align 4
  %196 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %197 = call i32 @INTEL_GEN(%struct.drm_i915_private* %196)
  %198 = icmp sge i32 %197, 9
  br i1 %198, label %199, label %202

199:                                              ; preds = %189
  %200 = load i32, i32* %22, align 4
  %201 = ashr i32 %200, 23
  store i32 %201, i32* %22, align 4
  br label %221

202:                                              ; preds = %189
  %203 = load i32, i32* @GEN6_TURBO_DISABLE, align 4
  %204 = xor i32 %203, -1
  %205 = load i32, i32* %22, align 4
  %206 = and i32 %205, %204
  store i32 %206, i32* %22, align 4
  %207 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %208 = call i64 @IS_HASWELL(%struct.drm_i915_private* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %202
  %211 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %212 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %210, %202
  %215 = load i32, i32* %22, align 4
  %216 = ashr i32 %215, 24
  store i32 %216, i32* %22, align 4
  br label %220

217:                                              ; preds = %210
  %218 = load i32, i32* %22, align 4
  %219 = ashr i32 %218, 25
  store i32 %219, i32* %22, align 4
  br label %220

220:                                              ; preds = %217, %214
  br label %221

221:                                              ; preds = %220, %199
  %222 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %223 = load i32, i32* %22, align 4
  %224 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %222, i32 %223)
  store i32 %224, i32* %22, align 4
  %225 = load i32, i32* @GEN6_RP_CONTROL, align 4
  %226 = call i32 @I915_READ(i32 %225)
  store i32 %226, i32* %17, align 4
  %227 = load i32, i32* @GEN6_RP_UP_THRESHOLD, align 4
  %228 = call i32 @I915_READ(i32 %227)
  store i32 %228, i32* %18, align 4
  %229 = load i32, i32* @GEN6_RP_DOWN_THRESHOLD, align 4
  %230 = call i32 @I915_READ(i32 %229)
  store i32 %230, i32* %19, align 4
  %231 = load i32, i32* @GEN6_RPSTAT1, align 4
  %232 = call i32 @I915_READ(i32 %231)
  store i32 %232, i32* %20, align 4
  %233 = load i32, i32* @GEN6_RP_CUR_UP_EI, align 4
  %234 = call i32 @I915_READ(i32 %233)
  %235 = load i32, i32* @GEN6_CURICONT_MASK, align 4
  %236 = and i32 %234, %235
  store i32 %236, i32* %23, align 4
  %237 = load i32, i32* @GEN6_RP_CUR_UP, align 4
  %238 = call i32 @I915_READ(i32 %237)
  %239 = load i32, i32* @GEN6_CURBSYTAVG_MASK, align 4
  %240 = and i32 %238, %239
  store i32 %240, i32* %24, align 4
  %241 = load i32, i32* @GEN6_RP_PREV_UP, align 4
  %242 = call i32 @I915_READ(i32 %241)
  %243 = load i32, i32* @GEN6_CURBSYTAVG_MASK, align 4
  %244 = and i32 %242, %243
  store i32 %244, i32* %25, align 4
  %245 = load i32, i32* @GEN6_RP_CUR_DOWN_EI, align 4
  %246 = call i32 @I915_READ(i32 %245)
  %247 = load i32, i32* @GEN6_CURIAVG_MASK, align 4
  %248 = and i32 %246, %247
  store i32 %248, i32* %26, align 4
  %249 = load i32, i32* @GEN6_RP_CUR_DOWN, align 4
  %250 = call i32 @I915_READ(i32 %249)
  %251 = load i32, i32* @GEN6_CURBSYTAVG_MASK, align 4
  %252 = and i32 %250, %251
  store i32 %252, i32* %27, align 4
  %253 = load i32, i32* @GEN6_RP_PREV_DOWN, align 4
  %254 = call i32 @I915_READ(i32 %253)
  %255 = load i32, i32* @GEN6_CURBSYTAVG_MASK, align 4
  %256 = and i32 %254, %255
  store i32 %256, i32* %28, align 4
  %257 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %258 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %259 = load i32, i32* %20, align 4
  %260 = call i32 @intel_get_cagf(%struct.drm_i915_private* %258, i32 %259)
  %261 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %257, i32 %260)
  store i32 %261, i32* %21, align 4
  %262 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %263 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %262, i32 0, i32 5
  %264 = load i32, i32* @FORCEWAKE_ALL, align 4
  %265 = call i32 @intel_uncore_forcewake_put(%struct.intel_uncore* %263, i32 %264)
  %266 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %267 = call i32 @INTEL_GEN(%struct.drm_i915_private* %266)
  %268 = icmp sge i32 %267, 11
  br i1 %268, label %269, label %274

269:                                              ; preds = %221
  %270 = load i32, i32* @GEN11_GPM_WGBOXPERF_INTR_ENABLE, align 4
  %271 = call i32 @I915_READ(i32 %270)
  store i32 %271, i32* %29, align 4
  %272 = load i32, i32* @GEN11_GPM_WGBOXPERF_INTR_MASK, align 4
  %273 = call i32 @I915_READ(i32 %272)
  store i32 %273, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  br label %297

274:                                              ; preds = %221
  %275 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %276 = call i32 @INTEL_GEN(%struct.drm_i915_private* %275)
  %277 = icmp sge i32 %276, 8
  br i1 %277, label %278, label %287

278:                                              ; preds = %274
  %279 = call i32 @GEN8_GT_IER(i32 2)
  %280 = call i32 @I915_READ(i32 %279)
  store i32 %280, i32* %29, align 4
  %281 = call i32 @GEN8_GT_IMR(i32 2)
  %282 = call i32 @I915_READ(i32 %281)
  store i32 %282, i32* %30, align 4
  %283 = call i32 @GEN8_GT_ISR(i32 2)
  %284 = call i32 @I915_READ(i32 %283)
  store i32 %284, i32* %31, align 4
  %285 = call i32 @GEN8_GT_IIR(i32 2)
  %286 = call i32 @I915_READ(i32 %285)
  store i32 %286, i32* %32, align 4
  br label %296

287:                                              ; preds = %274
  %288 = load i32, i32* @GEN6_PMIER, align 4
  %289 = call i32 @I915_READ(i32 %288)
  store i32 %289, i32* %29, align 4
  %290 = load i32, i32* @GEN6_PMIMR, align 4
  %291 = call i32 @I915_READ(i32 %290)
  store i32 %291, i32* %30, align 4
  %292 = load i32, i32* @GEN6_PMISR, align 4
  %293 = call i32 @I915_READ(i32 %292)
  store i32 %293, i32* %31, align 4
  %294 = load i32, i32* @GEN6_PMIIR, align 4
  %295 = call i32 @I915_READ(i32 %294)
  store i32 %295, i32* %32, align 4
  br label %296

296:                                              ; preds = %287, %278
  br label %297

297:                                              ; preds = %296, %269
  %298 = load i32, i32* @GEN6_PMINTRMSK, align 4
  %299 = call i32 @I915_READ(i32 %298)
  store i32 %299, i32* %33, align 4
  %300 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %301 = load i32, i32* %17, align 4
  %302 = load i32, i32* @GEN6_RP_MEDIA_TURBO, align 4
  %303 = and i32 %301, %302
  %304 = call i32 @yesno(i32 %303)
  %305 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %304)
  %306 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* @GEN6_RP_ENABLE, align 4
  %309 = and i32 %307, %308
  %310 = call i32 @yesno(i32 %309)
  %311 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %306, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %310)
  %312 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %313 = load i32, i32* %17, align 4
  %314 = load i32, i32* @GEN6_RP_MEDIA_MODE_MASK, align 4
  %315 = and i32 %313, %314
  %316 = load i32, i32* @GEN6_RP_MEDIA_SW_MODE, align 4
  %317 = icmp eq i32 %315, %316
  %318 = zext i1 %317 to i32
  %319 = call i32 @yesno(i32 %318)
  %320 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %312, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %319)
  %321 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %322 = load i32, i32* %29, align 4
  %323 = load i32, i32* %30, align 4
  %324 = load i32, i32* %33, align 4
  %325 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %321, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %322, i32 %323, i32 %324)
  %326 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %327 = call i32 @INTEL_GEN(%struct.drm_i915_private* %326)
  %328 = icmp sle i32 %327, 10
  br i1 %328, label %329, label %334

329:                                              ; preds = %297
  %330 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %331 = load i32, i32* %31, align 4
  %332 = load i32, i32* %32, align 4
  %333 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %330, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %331, i32 %332)
  br label %334

334:                                              ; preds = %329, %297
  %335 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %336 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %337 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 4
  %339 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %335, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %338)
  %340 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %341 = load i32, i32* %15, align 4
  %342 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %340, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 %341)
  %343 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %344 = load i32, i32* %15, align 4
  %345 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %346 = call i32 @INTEL_GEN(%struct.drm_i915_private* %345)
  %347 = icmp sge i32 %346, 9
  %348 = zext i1 %347 to i64
  %349 = select i1 %347, i32 130816, i32 65280
  %350 = and i32 %344, %349
  %351 = ashr i32 %350, 8
  %352 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %343, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i32 %351)
  %353 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %354 = load i32, i32* %15, align 4
  %355 = and i32 %354, 255
  %356 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %353, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %355)
  %357 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %358 = load i32, i32* %14, align 4
  %359 = and i32 %358, 255
  %360 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %357, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i32 %359)
  %361 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %362 = load i32, i32* %20, align 4
  %363 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %361, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 %362)
  %364 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %365 = load i32, i32* %17, align 4
  %366 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %364, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %365)
  %367 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %368 = load i32, i32* %18, align 4
  %369 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %367, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32 %368)
  %370 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %371 = load i32, i32* %19, align 4
  %372 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %370, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32 %371)
  %373 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %374 = load i32, i32* %22, align 4
  %375 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %373, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i32 %374)
  %376 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %377 = load i32, i32* %21, align 4
  %378 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %376, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i32 %377)
  %379 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %380 = load i32, i32* %23, align 4
  %381 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %382 = load i32, i32* %23, align 4
  %383 = call i32 @GT_PM_INTERVAL_TO_US(%struct.drm_i915_private* %381, i32 %382)
  %384 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %379, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i32 %380, i32 %383)
  %385 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %386 = load i32, i32* %24, align 4
  %387 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %388 = load i32, i32* %24, align 4
  %389 = call i32 @GT_PM_INTERVAL_TO_US(%struct.drm_i915_private* %387, i32 %388)
  %390 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %385, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i32 %386, i32 %389)
  %391 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %392 = load i32, i32* %25, align 4
  %393 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %394 = load i32, i32* %25, align 4
  %395 = call i32 @GT_PM_INTERVAL_TO_US(%struct.drm_i915_private* %393, i32 %394)
  %396 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %391, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 %392, i32 %395)
  %397 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %398 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %399 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %398, i32 0, i32 7
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %397, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i32 %401)
  %403 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %404 = load i32, i32* %26, align 4
  %405 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %406 = load i32, i32* %26, align 4
  %407 = call i32 @GT_PM_INTERVAL_TO_US(%struct.drm_i915_private* %405, i32 %406)
  %408 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %403, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 %404, i32 %407)
  %409 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %410 = load i32, i32* %27, align 4
  %411 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %412 = load i32, i32* %27, align 4
  %413 = call i32 @GT_PM_INTERVAL_TO_US(%struct.drm_i915_private* %411, i32 %412)
  %414 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %409, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i32 %410, i32 %413)
  %415 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %416 = load i32, i32* %28, align 4
  %417 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %418 = load i32, i32* %28, align 4
  %419 = call i32 @GT_PM_INTERVAL_TO_US(%struct.drm_i915_private* %417, i32 %418)
  %420 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %415, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 %416, i32 %419)
  %421 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %422 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %423 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %422, i32 0, i32 7
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %421, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0), i32 %425)
  %427 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %428 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %334
  %431 = load i32, i32* %16, align 4
  %432 = ashr i32 %431, 0
  br label %436

433:                                              ; preds = %334
  %434 = load i32, i32* %16, align 4
  %435 = ashr i32 %434, 16
  br label %436

436:                                              ; preds = %433, %430
  %437 = phi i32 [ %432, %430 ], [ %435, %433 ]
  %438 = and i32 %437, 255
  store i32 %438, i32* %34, align 4
  %439 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %440 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %446, label %442

442:                                              ; preds = %436
  %443 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %444 = call i32 @INTEL_GEN(%struct.drm_i915_private* %443)
  %445 = icmp sge i32 %444, 10
  br i1 %445, label %446, label %448

446:                                              ; preds = %442, %436
  %447 = load i32, i32* @GEN9_FREQ_SCALER, align 4
  br label %449

448:                                              ; preds = %442
  br label %449

449:                                              ; preds = %448, %446
  %450 = phi i32 [ %447, %446 ], [ 1, %448 ]
  %451 = load i32, i32* %34, align 4
  %452 = mul nsw i32 %451, %450
  store i32 %452, i32* %34, align 4
  %453 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %454 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %455 = load i32, i32* %34, align 4
  %456 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %454, i32 %455)
  %457 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %453, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i32 %456)
  %458 = load i32, i32* %16, align 4
  %459 = and i32 %458, 65280
  %460 = ashr i32 %459, 8
  store i32 %460, i32* %34, align 4
  %461 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %462 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %468, label %464

464:                                              ; preds = %449
  %465 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %466 = call i32 @INTEL_GEN(%struct.drm_i915_private* %465)
  %467 = icmp sge i32 %466, 10
  br i1 %467, label %468, label %470

468:                                              ; preds = %464, %449
  %469 = load i32, i32* @GEN9_FREQ_SCALER, align 4
  br label %471

470:                                              ; preds = %464
  br label %471

471:                                              ; preds = %470, %468
  %472 = phi i32 [ %469, %468 ], [ 1, %470 ]
  %473 = load i32, i32* %34, align 4
  %474 = mul nsw i32 %473, %472
  store i32 %474, i32* %34, align 4
  %475 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %476 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %477 = load i32, i32* %34, align 4
  %478 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %476, i32 %477)
  %479 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %475, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0), i32 %478)
  %480 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %481 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %486

483:                                              ; preds = %471
  %484 = load i32, i32* %16, align 4
  %485 = ashr i32 %484, 16
  br label %489

486:                                              ; preds = %471
  %487 = load i32, i32* %16, align 4
  %488 = ashr i32 %487, 0
  br label %489

489:                                              ; preds = %486, %483
  %490 = phi i32 [ %485, %483 ], [ %488, %486 ]
  %491 = and i32 %490, 255
  store i32 %491, i32* %34, align 4
  %492 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %493 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %492)
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %499, label %495

495:                                              ; preds = %489
  %496 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %497 = call i32 @INTEL_GEN(%struct.drm_i915_private* %496)
  %498 = icmp sge i32 %497, 10
  br i1 %498, label %499, label %501

499:                                              ; preds = %495, %489
  %500 = load i32, i32* @GEN9_FREQ_SCALER, align 4
  br label %502

501:                                              ; preds = %495
  br label %502

502:                                              ; preds = %501, %499
  %503 = phi i32 [ %500, %499 ], [ 1, %501 ]
  %504 = load i32, i32* %34, align 4
  %505 = mul nsw i32 %504, %503
  store i32 %505, i32* %34, align 4
  %506 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %507 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %508 = load i32, i32* %34, align 4
  %509 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %507, i32 %508)
  %510 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %506, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.38, i64 0, i64 0), i32 %509)
  %511 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %512 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %513 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %514 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %512, i32 %515)
  %517 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %511, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i64 0, i64 0), i32 %516)
  %518 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %519 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %520 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %521 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %519, i32 %522)
  %524 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %518, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0), i32 %523)
  %525 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %526 = load i32, i32* %21, align 4
  %527 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %525, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0), i32 %526)
  %528 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %529 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %530 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %531 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %530, i32 0, i32 3
  %532 = load i32, i32* %531, align 4
  %533 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %529, i32 %532)
  %534 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %528, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0), i32 %533)
  %535 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %536 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %537 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %538 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %537, i32 0, i32 2
  %539 = load i32, i32* %538, align 4
  %540 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %536, i32 %539)
  %541 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %535, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i32 %540)
  %542 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %543 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %544 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %545 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %544, i32 0, i32 6
  %546 = load i32, i32* %545, align 4
  %547 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %543, i32 %546)
  %548 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %542, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i64 0, i64 0), i32 %547)
  %549 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %550 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %551 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %552 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 4
  %554 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %550, i32 %553)
  %555 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %549, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0), i32 %554)
  %556 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %557 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %558 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %559 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %558, i32 0, i32 4
  %560 = load i32, i32* %559, align 4
  %561 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %557, i32 %560)
  %562 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %556, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32 %561)
  br label %566

563:                                              ; preds = %169
  %564 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %565 = call i32 @seq_puts(%struct.seq_file* %564, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0))
  br label %566

566:                                              ; preds = %563, %502
  br label %567

567:                                              ; preds = %566, %88
  br label %568

568:                                              ; preds = %567, %50
  %569 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %570 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %571 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %570, i32 0, i32 4
  %572 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %571, i32 0, i32 0
  %573 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 4
  %575 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %569, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i64 0, i64 0), i32 %574)
  %576 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %577 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %578 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 4
  %580 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %576, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i64 0, i64 0), i32 %579)
  %581 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %582 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %583 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %582, i32 0, i32 2
  %584 = load i32, i32* %583, align 4
  %585 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %581, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.49, i64 0, i64 0), i32 %584)
  %586 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %587 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %586, i32 0, i32 3
  %588 = load i32, i32* %8, align 4
  %589 = call i32 @intel_runtime_pm_put(i32* %587, i32 %588)
  %590 = load i32, i32* %9, align 4
  ret i32 %590
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_read16(%struct.intel_uncore*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @vlv_punit_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_punit_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_punit_put(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gpu_freq(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uncore_forcewake_get(%struct.intel_uncore*, i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_get_cagf(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_forcewake_put(%struct.intel_uncore*, i32) #1

declare dso_local i32 @GEN8_GT_IER(i32) #1

declare dso_local i32 @GEN8_GT_IMR(i32) #1

declare dso_local i32 @GEN8_GT_ISR(i32) #1

declare dso_local i32 @GEN8_GT_IIR(i32) #1

declare dso_local i32 @GT_PM_INTERVAL_TO_US(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
