; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_dpm_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_dpm_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, i32, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_BALANCED = common dso_local global i8* null, align 8
@AMD_DPM_FORCED_LEVEL_AUTO = common dso_local global i32 0, align 4
@THERMAL_TYPE_NONE = common dso_local global i32 0, align 4
@amdgpu_dpm = common dso_local global i32 0, align 4
@amdgpu_dpm_thermal_work_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"amdgpu: dpm initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"amdgpu: dpm initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @si_dpm_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_dpm_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %5, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %9 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %8, i32 %9, i32 230, i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %142

20:                                               ; preds = %1
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %22 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %21, i32 %22, i32 231, i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %142

33:                                               ; preds = %20
  %34 = load i8*, i8** @POWER_STATE_TYPE_BALANCED, align 8
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 6
  store i8* %34, i8** %38, align 8
  %39 = load i8*, i8** @POWER_STATE_TYPE_BALANCED, align 8
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  store i8* %39, i8** %43, align 8
  %44 = load i32, i32* @AMD_DPM_FORCED_LEVEL_AUTO, align 4
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  store i32 %44, i32* %48, align 4
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 6
  store i32 %52, i32* %55, align 8
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  store i32 %59, i32* %62, align 4
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 8
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @THERMAL_TYPE_NONE, align 4
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @amdgpu_dpm, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %142

84:                                               ; preds = %33
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %86 = call i32 @si_dpm_init_microcode(%struct.amdgpu_device* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %142

91:                                               ; preds = %84
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* @amdgpu_dpm_thermal_work_handler, align 4
  %98 = call i32 @INIT_WORK(i32* %96, i32 %97)
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = call i32 @mutex_lock(i32* %101)
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %104 = call i32 @si_dpm_init(%struct.amdgpu_device* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %91
  br label %133

108:                                              ; preds = %91
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 4
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %119 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  store i32 %113, i32* %121, align 8
  %122 = load i32, i32* @amdgpu_dpm, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %127

124:                                              ; preds = %108
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %126 = call i32 @amdgpu_pm_print_power_states(%struct.amdgpu_device* %125)
  br label %127

127:                                              ; preds = %124, %108
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = call i32 @DRM_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %142

133:                                              ; preds = %107
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %135 = call i32 @si_dpm_fini(%struct.amdgpu_device* %134)
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = call i32 @mutex_unlock(i32* %138)
  %140 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %133, %127, %89, %83, %31, %18
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @si_dpm_init_microcode(%struct.amdgpu_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @si_dpm_init(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_pm_print_power_states(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @si_dpm_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
