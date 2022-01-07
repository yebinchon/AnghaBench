; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_hw_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.amdgpu_device*, %struct.TYPE_5__*, i64 }
%struct.amdgpu_device = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c"PSP load kdb failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"PSP load sysdrv failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"PSP load sos failed!\0A\00", align 1
@PSP_RING_TYPE__KM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"PSP create ring failed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"PSP tmr init failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"PSP load tmr failed!\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"PSP asd init failed!\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"PSP load asd failed!\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"XGMI: Failed to initialize XGMI session\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"RAS: Failed to initialize RAS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_hw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_hw_start(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  %6 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %7 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %6, i32 0, i32 0
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %4, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %19 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %24 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %31 = call i32 @psp_bootloader_load_kdb(%struct.psp_context* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %138

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %22, %17
  %39 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %40 = call i32 @psp_bootloader_load_sysdrv(%struct.psp_context* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %138

46:                                               ; preds = %38
  %47 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %48 = call i32 @psp_bootloader_load_sos(%struct.psp_context* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %138

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %12
  %56 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %57 = load i32, i32* @PSP_RING_TYPE__KM, align 4
  %58 = call i32 @psp_ring_create(%struct.psp_context* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %138

64:                                               ; preds = %55
  %65 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %66 = call i32 @psp_tmr_init(%struct.psp_context* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %138

72:                                               ; preds = %64
  %73 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %74 = call i32 @psp_tmr_load(%struct.psp_context* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %138

80:                                               ; preds = %72
  %81 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %82 = call i32 @psp_asd_init(%struct.psp_context* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %138

88:                                               ; preds = %80
  %89 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %90 = call i32 @psp_asd_load(%struct.psp_context* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %138

96:                                               ; preds = %88
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %116

103:                                              ; preds = %96
  %104 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %105 = call i32 @psp_xgmi_initialize(%struct.psp_context* %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %110 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %109, i32 0, i32 0
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %110, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %115

115:                                              ; preds = %108, %103
  br label %116

116:                                              ; preds = %115, %96
  %117 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %118 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %117, i32 0, i32 0
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %118, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %116
  %125 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %126 = call i32 @psp_ras_initialize(%struct.psp_context* %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %131 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %130, i32 0, i32 0
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %131, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @dev_err(i32 %134, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %136

136:                                              ; preds = %129, %124
  br label %137

137:                                              ; preds = %136, %116
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %93, %85, %77, %69, %61, %51, %43, %34
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @psp_bootloader_load_kdb(%struct.psp_context*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @psp_bootloader_load_sysdrv(%struct.psp_context*) #1

declare dso_local i32 @psp_bootloader_load_sos(%struct.psp_context*) #1

declare dso_local i32 @psp_ring_create(%struct.psp_context*, i32) #1

declare dso_local i32 @psp_tmr_init(%struct.psp_context*) #1

declare dso_local i32 @psp_tmr_load(%struct.psp_context*) #1

declare dso_local i32 @psp_asd_init(%struct.psp_context*) #1

declare dso_local i32 @psp_asd_load(%struct.psp_context*) #1

declare dso_local i32 @psp_xgmi_initialize(%struct.psp_context*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @psp_ras_initialize(%struct.psp_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
