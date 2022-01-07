; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_setup_dvo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_setup_dvo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.amdgpu_encoder = type { i32 }
%union.dvo_encoder_control = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i8* }

@COMMAND = common dso_local global i32 0, align 4
@DVOEncoderControl = common dso_local global i32 0, align 4
@PANEL_ENCODER_MISC_DUAL = common dso_local global i32 0, align 4
@ATOM_PANEL_MISC_888RGB = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP1_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown table version %d, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @amdgpu_atombios_encoder_setup_dvo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_atombios_encoder_setup_dvo(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_encoder*, align 8
  %8 = alloca %union.dvo_encoder_control, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %6, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %18)
  store %struct.amdgpu_encoder* %19, %struct.amdgpu_encoder** %7, align 8
  %20 = load i32, i32* @COMMAND, align 4
  %21 = load i32, i32* @DVOEncoderControl, align 4
  %22 = call i32 @GetIndexIntoMasterTable(i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = call i32 @memset(%union.dvo_encoder_control* %8, i32 0, i32 24)
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @amdgpu_atom_parse_cmd_header(i32 %27, i32 %28, i32* %10, i32* %11)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %141

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %129 [
    i32 1, label %34
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %11, align 4
  switch i32 %35, label %124 [
    i32 1, label %36
    i32 2, label %61
    i32 3, label %94
    i32 4, label %107
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* %4, align 4
  %38 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_11__*
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %42 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %43 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load i32, i32* @PANEL_ENCODER_MISC_DUAL, align 4
  %49 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_11__*
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %36
  %55 = load i32, i32* @ATOM_PANEL_MISC_888RGB, align 4
  %56 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_11__*
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  br label %128

61:                                               ; preds = %34
  %62 = load i32, i32* %4, align 4
  %63 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_15__*
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %67 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %68, 10
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_15__*
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  store i8* %70, i8** %73, align 8
  %74 = load i32, i32* @ATOM_DEVICE_DFP1_INDEX, align 4
  %75 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_15__*
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 8
  %78 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %79 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %80 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %78, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %61
  %85 = load i32, i32* @PANEL_ENCODER_MISC_DUAL, align 4
  %86 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_15__*
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %85
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %84, %61
  br label %128

94:                                               ; preds = %34
  %95 = load i32, i32* %4, align 4
  %96 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_16__*
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %99 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %100, 10
  %102 = call i8* @cpu_to_le16(i32 %101)
  %103 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_16__*
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_16__*
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  br label %128

107:                                              ; preds = %34
  %108 = load i32, i32* %4, align 4
  %109 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_17__*
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %112 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sdiv i32 %113, 10
  %115 = call i8* @cpu_to_le16(i32 %114)
  %116 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_17__*
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  %118 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_17__*
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  store i32 0, i32* %119, align 8
  %120 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %121 = call i32 @amdgpu_atombios_encoder_get_bpc(%struct.drm_encoder* %120)
  %122 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_17__*
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %128

124:                                              ; preds = %34
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %107, %94, %93, %54
  br label %133

129:                                              ; preds = %32
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %128
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %135 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %9, align 4
  %139 = bitcast %union.dvo_encoder_control* %8 to i32*
  %140 = call i32 @amdgpu_atom_execute_table(i32 %137, i32 %138, i32* %139)
  br label %141

141:                                              ; preds = %133, %31
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%union.dvo_encoder_control*, i32, i32) #1

declare dso_local i32 @amdgpu_atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_get_bpc(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
