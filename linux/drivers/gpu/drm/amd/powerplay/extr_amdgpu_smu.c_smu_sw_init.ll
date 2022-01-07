; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_7__, %struct.smu_context }
%struct.TYPE_7__ = type { i32, i32 }
%struct.smu_context = type { i64, i64, i32, i32*, i64*, %struct.TYPE_8__, i32*, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@SMU_FEATURE_MAX = common dso_local global i32 0, align 4
@SMU_BACO_STATE_EXIT = common dso_local global i32 0, align 4
@PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT = common dso_local global i64 0, align 8
@PP_SMC_POWER_PROFILE_FULLSCREEN3D = common dso_local global i64 0, align 8
@PP_SMC_POWER_PROFILE_POWERSAVING = common dso_local global i64 0, align 8
@PP_SMC_POWER_PROFILE_VIDEO = common dso_local global i64 0, align 8
@PP_SMC_POWER_PROFILE_VR = common dso_local global i64 0, align 8
@PP_SMC_POWER_PROFILE_COMPUTE = common dso_local global i64 0, align 8
@PP_SMC_POWER_PROFILE_CUSTOM = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_AUTO = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to load smu firmware!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to sw init smc table!\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to register smc irq handler!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @smu_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %4, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  store %struct.smu_context* %10, %struct.smu_context** %5, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %16 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @SMU_FEATURE_MAX, align 4
  %18 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %19 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %18, i32 0, i32 10
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i32 %17, i32* %20, align 8
  %21 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %22 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %21, i32 0, i32 10
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %26 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %25, i32 0, i32 10
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SMU_FEATURE_MAX, align 4
  %30 = call i32 @bitmap_zero(i32 %28, i32 %29)
  %31 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %32 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %31, i32 0, i32 10
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SMU_FEATURE_MAX, align 4
  %36 = call i32 @bitmap_zero(i32 %34, i32 %35)
  %37 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %38 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %37, i32 0, i32 10
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SMU_FEATURE_MAX, align 4
  %42 = call i32 @bitmap_zero(i32 %40, i32 %41)
  %43 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %44 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %43, i32 0, i32 9
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load i32, i32* @SMU_BACO_STATE_EXIT, align 4
  %48 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %49 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %52 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %51, i32 0, i32 9
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %55 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %54, i32 0, i32 8
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %58 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %57, i32 0, i32 7
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* @PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT, align 8
  %60 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %61 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* @PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT, align 8
  %63 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %64 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %66 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 1, %70
  %72 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %73 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %75 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 0, i32* %78, align 4
  %79 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %80 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @PP_SMC_POWER_PROFILE_FULLSCREEN3D, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 1, i32* %83, align 4
  %84 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %85 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @PP_SMC_POWER_PROFILE_POWERSAVING, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 2, i32* %88, align 4
  %89 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %90 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @PP_SMC_POWER_PROFILE_VIDEO, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 3, i32* %93, align 4
  %94 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %95 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @PP_SMC_POWER_PROFILE_VR, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32 4, i32* %98, align 4
  %99 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %100 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @PP_SMC_POWER_PROFILE_COMPUTE, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 5, i32* %103, align 4
  %104 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %105 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @PP_SMC_POWER_PROFILE_CUSTOM, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 6, i32* %108, align 4
  %109 = load i64, i64* @PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT, align 8
  %110 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %111 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %110, i32 0, i32 4
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  store i64 %109, i64* %113, align 8
  %114 = load i64, i64* @PP_SMC_POWER_PROFILE_FULLSCREEN3D, align 8
  %115 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %116 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %115, i32 0, i32 4
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  store i64 %114, i64* %118, align 8
  %119 = load i64, i64* @PP_SMC_POWER_PROFILE_POWERSAVING, align 8
  %120 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %121 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %120, i32 0, i32 4
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 2
  store i64 %119, i64* %123, align 8
  %124 = load i64, i64* @PP_SMC_POWER_PROFILE_VIDEO, align 8
  %125 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %126 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %125, i32 0, i32 4
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 3
  store i64 %124, i64* %128, align 8
  %129 = load i64, i64* @PP_SMC_POWER_PROFILE_VR, align 8
  %130 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %131 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %130, i32 0, i32 4
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 4
  store i64 %129, i64* %133, align 8
  %134 = load i64, i64* @PP_SMC_POWER_PROFILE_COMPUTE, align 8
  %135 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %136 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %135, i32 0, i32 4
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 5
  store i64 %134, i64* %138, align 8
  %139 = load i64, i64* @PP_SMC_POWER_PROFILE_CUSTOM, align 8
  %140 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %141 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %140, i32 0, i32 4
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 6
  store i64 %139, i64* %143, align 8
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %148 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %147, i32 0, i32 6
  store i32* %146, i32** %148, align 8
  %149 = load i8*, i8** @AMD_DPM_FORCED_LEVEL_AUTO, align 8
  %150 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %151 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  store i8* %149, i8** %152, align 8
  %153 = load i8*, i8** @AMD_DPM_FORCED_LEVEL_AUTO, align 8
  %154 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %155 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i8* %153, i8** %156, align 8
  %157 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %158 = call i32 @smu_init_microcode(%struct.smu_context* %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %1
  %162 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %2, align 4
  br label %181

164:                                              ; preds = %1
  %165 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %166 = call i32 @smu_smc_table_sw_init(%struct.smu_context* %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %2, align 4
  br label %181

172:                                              ; preds = %164
  %173 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %174 = call i32 @smu_register_irq_handler(%struct.smu_context* %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %2, align 4
  br label %181

180:                                              ; preds = %172
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %177, %169, %161
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @smu_init_microcode(%struct.smu_context*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @smu_smc_table_sw_init(%struct.smu_context*) #1

declare dso_local i32 @smu_register_irq_handler(%struct.smu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
