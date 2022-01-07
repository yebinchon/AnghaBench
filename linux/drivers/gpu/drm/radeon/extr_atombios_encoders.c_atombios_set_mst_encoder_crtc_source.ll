; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_set_mst_encoder_crtc_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_set_mst_encoder_crtc_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_crtc = type { i32 }
%union.crtc_source_param = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@COMMAND = common dso_local global i32 0, align 4
@SelectCRTC_Source = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown table for MST %d, %d\0A\00", align 1
@ATOM_ENCODER_MODE_DP_MST = common dso_local global i32 0, align 4
@ASIC_INT_DIG1_ENCODER_ID = common dso_local global i32 0, align 4
@ASIC_INT_DIG2_ENCODER_ID = common dso_local global i32 0, align 4
@ASIC_INT_DIG3_ENCODER_ID = common dso_local global i32 0, align 4
@ASIC_INT_DIG4_ENCODER_ID = common dso_local global i32 0, align 4
@ASIC_INT_DIG5_ENCODER_ID = common dso_local global i32 0, align 4
@ASIC_INT_DIG6_ENCODER_ID = common dso_local global i32 0, align 4
@ASIC_INT_DIG7_ENCODER_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atombios_set_mst_encoder_crtc_source(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.crtc_source_param, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %6, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.radeon_crtc* @to_radeon_crtc(i32 %20)
  store %struct.radeon_crtc* %21, %struct.radeon_crtc** %7, align 8
  %22 = load i32, i32* @COMMAND, align 4
  %23 = load i32, i32* @SelectCRTC_Source, align 4
  %24 = call i32 @GetIndexIntoMasterTable(i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = call i32 @memset(%union.crtc_source_param* %11, i32 0, i32 12)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @atom_parse_cmd_header(i32 %29, i32 %30, i32* %9, i32* %10)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %90

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 2
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %37, %34
  %45 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %46 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = bitcast %union.crtc_source_param* %11 to %struct.TYPE_3__*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @ATOM_ENCODER_MODE_DP_MST, align 4
  %51 = bitcast %union.crtc_source_param* %11 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %4, align 4
  switch i32 %53, label %82 [
    i32 0, label %54
    i32 1, label %58
    i32 2, label %62
    i32 3, label %66
    i32 4, label %70
    i32 5, label %74
    i32 6, label %78
  ]

54:                                               ; preds = %44
  %55 = load i32, i32* @ASIC_INT_DIG1_ENCODER_ID, align 4
  %56 = bitcast %union.crtc_source_param* %11 to %struct.TYPE_3__*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %82

58:                                               ; preds = %44
  %59 = load i32, i32* @ASIC_INT_DIG2_ENCODER_ID, align 4
  %60 = bitcast %union.crtc_source_param* %11 to %struct.TYPE_3__*
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %82

62:                                               ; preds = %44
  %63 = load i32, i32* @ASIC_INT_DIG3_ENCODER_ID, align 4
  %64 = bitcast %union.crtc_source_param* %11 to %struct.TYPE_3__*
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %82

66:                                               ; preds = %44
  %67 = load i32, i32* @ASIC_INT_DIG4_ENCODER_ID, align 4
  %68 = bitcast %union.crtc_source_param* %11 to %struct.TYPE_3__*
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %82

70:                                               ; preds = %44
  %71 = load i32, i32* @ASIC_INT_DIG5_ENCODER_ID, align 4
  %72 = bitcast %union.crtc_source_param* %11 to %struct.TYPE_3__*
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %82

74:                                               ; preds = %44
  %75 = load i32, i32* @ASIC_INT_DIG6_ENCODER_ID, align 4
  %76 = bitcast %union.crtc_source_param* %11 to %struct.TYPE_3__*
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %82

78:                                               ; preds = %44
  %79 = load i32, i32* @ASIC_INT_DIG7_ENCODER_ID, align 4
  %80 = bitcast %union.crtc_source_param* %11 to %struct.TYPE_3__*
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %44, %78, %74, %70, %66, %62, %58, %54
  %83 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = bitcast %union.crtc_source_param* %11 to i32*
  %89 = call i32 @atom_execute_table(i32 %86, i32 %87, i32* %88)
  br label %90

90:                                               ; preds = %82, %33
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i32) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%union.crtc_source_param*, i32, i32) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
