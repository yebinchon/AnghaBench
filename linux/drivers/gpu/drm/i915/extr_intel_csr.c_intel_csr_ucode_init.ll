; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_intel_csr_ucode_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_intel_csr_ucode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.drm_i915_private = type { %struct.intel_csr }
%struct.intel_csr = type { i32, i32*, i64, i32 }

@csr_load_work_fn = common dso_local global i32 0, align 4
@TGL_CSR_PATH = common dso_local global i32* null, align 8
@TGL_CSR_VERSION_REQUIRED = common dso_local global i64 0, align 8
@GEN12_CSR_MAX_FW_SIZE = common dso_local global i32 0, align 4
@ICL_CSR_PATH = common dso_local global i32* null, align 8
@ICL_CSR_VERSION_REQUIRED = common dso_local global i64 0, align 8
@ICL_CSR_MAX_FW_SIZE = common dso_local global i32 0, align 4
@CNL_CSR_PATH = common dso_local global i32* null, align 8
@CNL_CSR_VERSION_REQUIRED = common dso_local global i64 0, align 8
@CNL_CSR_MAX_FW_SIZE = common dso_local global i32 0, align 4
@GLK_CSR_PATH = common dso_local global i32* null, align 8
@GLK_CSR_VERSION_REQUIRED = common dso_local global i64 0, align 8
@GLK_CSR_MAX_FW_SIZE = common dso_local global i32 0, align 4
@KBL_CSR_PATH = common dso_local global i32* null, align 8
@KBL_CSR_VERSION_REQUIRED = common dso_local global i64 0, align 8
@KBL_CSR_MAX_FW_SIZE = common dso_local global i32 0, align 4
@SKL_CSR_PATH = common dso_local global i32* null, align 8
@SKL_CSR_VERSION_REQUIRED = common dso_local global i64 0, align 8
@SKL_CSR_MAX_FW_SIZE = common dso_local global i32 0, align 4
@BXT_CSR_PATH = common dso_local global i32* null, align 8
@BXT_CSR_VERSION_REQUIRED = common dso_local global i64 0, align 8
@BXT_CSR_MAX_FW_SIZE = common dso_local global i32 0, align 4
@i915_modparams = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"Disabling CSR firmware and runtime PM\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"No known CSR firmware for platform, disabling runtime PM\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Loading %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_csr_ucode_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_csr*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  store %struct.intel_csr* %5, %struct.intel_csr** %3, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %7, i32 0, i32 0
  %9 = load i32, i32* @csr_load_work_fn, align 4
  %10 = call i32 @INIT_WORK(i32* %8, i32 %9)
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = call i32 @HAS_CSR(%struct.drm_i915_private* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %158

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = call i32 @intel_csr_runtime_pm_get(%struct.drm_i915_private* %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = call i32 @INTEL_GEN(%struct.drm_i915_private* %18)
  %20 = icmp sge i32 %19, 12
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i32*, i32** @TGL_CSR_PATH, align 8
  %23 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %24 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load i64, i64* @TGL_CSR_VERSION_REQUIRED, align 8
  %26 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %27 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @GEN12_CSR_MAX_FW_SIZE, align 4
  %29 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %30 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  br label %125

31:                                               ; preds = %15
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = call i64 @IS_GEN(%struct.drm_i915_private* %32, i32 11)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32*, i32** @ICL_CSR_PATH, align 8
  %37 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %38 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load i64, i64* @ICL_CSR_VERSION_REQUIRED, align 8
  %40 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %41 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @ICL_CSR_MAX_FW_SIZE, align 4
  %43 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %44 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  br label %124

45:                                               ; preds = %31
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32*, i32** @CNL_CSR_PATH, align 8
  %51 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %52 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load i64, i64* @CNL_CSR_VERSION_REQUIRED, align 8
  %54 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %55 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @CNL_CSR_MAX_FW_SIZE, align 4
  %57 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %58 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  br label %123

59:                                               ; preds = %45
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %61 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i32*, i32** @GLK_CSR_PATH, align 8
  %65 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %66 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load i64, i64* @GLK_CSR_VERSION_REQUIRED, align 8
  %68 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %69 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* @GLK_CSR_MAX_FW_SIZE, align 4
  %71 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %72 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  br label %122

73:                                               ; preds = %59
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %75 = call i64 @IS_KABYLAKE(%struct.drm_i915_private* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %79 = call i64 @IS_COFFEELAKE(%struct.drm_i915_private* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %77, %73
  %82 = load i32*, i32** @KBL_CSR_PATH, align 8
  %83 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %84 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %83, i32 0, i32 1
  store i32* %82, i32** %84, align 8
  %85 = load i64, i64* @KBL_CSR_VERSION_REQUIRED, align 8
  %86 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %87 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* @KBL_CSR_MAX_FW_SIZE, align 4
  %89 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %90 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  br label %121

91:                                               ; preds = %77
  %92 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %93 = call i64 @IS_SKYLAKE(%struct.drm_i915_private* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i32*, i32** @SKL_CSR_PATH, align 8
  %97 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %98 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %97, i32 0, i32 1
  store i32* %96, i32** %98, align 8
  %99 = load i64, i64* @SKL_CSR_VERSION_REQUIRED, align 8
  %100 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %101 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* @SKL_CSR_MAX_FW_SIZE, align 4
  %103 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %104 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  br label %120

105:                                              ; preds = %91
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %107 = call i64 @IS_BROXTON(%struct.drm_i915_private* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load i32*, i32** @BXT_CSR_PATH, align 8
  %111 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %112 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %111, i32 0, i32 1
  store i32* %110, i32** %112, align 8
  %113 = load i64, i64* @BXT_CSR_VERSION_REQUIRED, align 8
  %114 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %115 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @BXT_CSR_MAX_FW_SIZE, align 4
  %117 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %118 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %109, %105
  br label %120

120:                                              ; preds = %119, %95
  br label %121

121:                                              ; preds = %120, %81
  br label %122

122:                                              ; preds = %121, %63
  br label %123

123:                                              ; preds = %122, %49
  br label %124

124:                                              ; preds = %123, %35
  br label %125

125:                                              ; preds = %124, %21
  %126 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i915_modparams, i32 0, i32 0), align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %142

128:                                              ; preds = %125
  %129 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i915_modparams, i32 0, i32 0), align 8
  %130 = call i64 @strlen(i32* %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %134 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %133, i32 0, i32 1
  store i32* null, i32** %134, align 8
  %135 = call i32 @DRM_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %158

136:                                              ; preds = %128
  %137 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i915_modparams, i32 0, i32 0), align 8
  %138 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %139 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %138, i32 0, i32 1
  store i32* %137, i32** %139, align 8
  %140 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %141 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %140, i32 0, i32 2
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %136, %125
  %143 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %144 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %158

149:                                              ; preds = %142
  %150 = load %struct.intel_csr*, %struct.intel_csr** %3, align 8
  %151 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %152)
  %154 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %155 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %155, i32 0, i32 0
  %157 = call i32 @schedule_work(i32* %156)
  br label %158

158:                                              ; preds = %149, %147, %132, %14
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @HAS_CSR(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_csr_runtime_pm_get(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_SKYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROXTON(%struct.drm_i915_private*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
