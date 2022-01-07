; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_dvo_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_dvo_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.radeon_encoder = type { i32 }
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
@CHIP_RV410 = common dso_local global i64 0, align 8
@PANEL_ENCODER_MISC_DUAL = common dso_local global i32 0, align 4
@ATOM_PANEL_MISC_888RGB = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP1_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown table version %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atombios_dvo_setup(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
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
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %6, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %18)
  store %struct.radeon_encoder* %19, %struct.radeon_encoder** %7, align 8
  %20 = load i32, i32* @COMMAND, align 4
  %21 = load i32, i32* @DVOEncoderControl, align 4
  %22 = call i32 @GetIndexIntoMasterTable(i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = call i32 @memset(%union.dvo_encoder_control* %8, i32 0, i32 24)
  %24 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @atom_parse_cmd_header(i32 %27, i32 %28, i32* %10, i32* %11)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %148

32:                                               ; preds = %2
  %33 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CHIP_RV410, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %10, align 4
  switch i32 %40, label %136 [
    i32 1, label %41
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* %11, align 4
  switch i32 %42, label %131 [
    i32 1, label %43
    i32 2, label %68
    i32 3, label %101
    i32 4, label %114
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* %4, align 4
  %45 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_11__*
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %49 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %50 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load i32, i32* @PANEL_ENCODER_MISC_DUAL, align 4
  %56 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_11__*
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %54, %43
  %62 = load i32, i32* @ATOM_PANEL_MISC_888RGB, align 4
  %63 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_11__*
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 4
  br label %135

68:                                               ; preds = %41
  %69 = load i32, i32* %4, align 4
  %70 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_15__*
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %74 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 10
  %77 = call i8* @cpu_to_le16(i32 %76)
  %78 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_15__*
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 3
  store i8* %77, i8** %80, align 8
  %81 = load i32, i32* @ATOM_DEVICE_DFP1_INDEX, align 4
  %82 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_15__*
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %86 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %87 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %68
  %92 = load i32, i32* @PANEL_ENCODER_MISC_DUAL, align 4
  %93 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_15__*
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %92
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %91, %68
  br label %135

101:                                              ; preds = %41
  %102 = load i32, i32* %4, align 4
  %103 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_16__*
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %106 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sdiv i32 %107, 10
  %109 = call i8* @cpu_to_le16(i32 %108)
  %110 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_16__*
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_16__*
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  br label %135

114:                                              ; preds = %41
  %115 = load i32, i32* %4, align 4
  %116 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_17__*
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %119 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %120, 10
  %122 = call i8* @cpu_to_le16(i32 %121)
  %123 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_17__*
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  %125 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_17__*
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 2
  store i32 0, i32* %126, align 8
  %127 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %128 = call i32 @radeon_atom_get_bpc(%struct.drm_encoder* %127)
  %129 = bitcast %union.dvo_encoder_control* %8 to %struct.TYPE_17__*
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %135

131:                                              ; preds = %41
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %114, %101, %100, %61
  br label %140

136:                                              ; preds = %39
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %135
  %141 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = bitcast %union.dvo_encoder_control* %8 to i32*
  %147 = call i32 @atom_execute_table(i32 %144, i32 %145, i32* %146)
  br label %148

148:                                              ; preds = %140, %31
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%union.dvo_encoder_control*, i32, i32) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @radeon_atom_get_bpc(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
