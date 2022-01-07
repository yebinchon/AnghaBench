; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_dac_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_dac_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_connector = type { i32 }
%struct.amdgpu_encoder = type { i32 }
%struct.amdgpu_connector = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"detect returned false \0A\00", align 1
@connector_status_unknown = common dso_local global i32 0, align 4
@mmBIOS_SCRATCH_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Bios 0 scratch %x %08x\0A\00", align 1
@ATOM_DEVICE_CRT1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S0_CRT1_MASK = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT2_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S0_CRT2_MASK = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S0_CV_MASK = common dso_local global i32 0, align 4
@ATOM_S0_CV_MASK_A = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S0_TV1_COMPOSITE = common dso_local global i32 0, align 4
@ATOM_S0_TV1_COMPOSITE_A = common dso_local global i32 0, align 4
@ATOM_S0_TV1_SVIDEO = common dso_local global i32 0, align 4
@ATOM_S0_TV1_SVIDEO_A = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_encoder_dac_detect(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_encoder*, align 8
  %9 = alloca %struct.amdgpu_connector*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %7, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %18 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %17)
  store %struct.amdgpu_encoder* %18, %struct.amdgpu_encoder** %8, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %20 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %19)
  store %struct.amdgpu_connector* %20, %struct.amdgpu_connector** %9, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %23 = call i32 @amdgpu_atombios_encoder_dac_load_detect(%struct.drm_encoder* %21, %struct.drm_connector* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @connector_status_unknown, align 4
  store i32 %27, i32* %3, align 4
  br label %111

28:                                               ; preds = %2
  %29 = load i32, i32* @mmBIOS_SCRATCH_0, align 4
  %30 = call i32 @RREG32(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %8, align 8
  %33 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %37 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %28
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @ATOM_S0_CRT1_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @connector_status_connected, align 4
  store i32 %48, i32* %3, align 4
  br label %111

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %52 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @ATOM_S0_CRT2_MASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @connector_status_connected, align 4
  store i32 %63, i32* %3, align 4
  br label %111

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %50
  %66 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %67 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @ATOM_S0_CV_MASK, align 4
  %75 = load i32, i32* @ATOM_S0_CV_MASK_A, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @connector_status_connected, align 4
  store i32 %80, i32* %3, align 4
  br label %111

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %65
  %83 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %84 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @ATOM_S0_TV1_COMPOSITE, align 4
  %92 = load i32, i32* @ATOM_S0_TV1_COMPOSITE_A, align 4
  %93 = or i32 %91, %92
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @connector_status_connected, align 4
  store i32 %97, i32* %3, align 4
  br label %111

98:                                               ; preds = %89
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @ATOM_S0_TV1_SVIDEO, align 4
  %101 = load i32, i32* @ATOM_S0_TV1_SVIDEO_A, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* @connector_status_connected, align 4
  store i32 %106, i32* %3, align 4
  br label %111

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %82
  %110 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %105, %96, %79, %62, %47, %25
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_atombios_encoder_dac_load_detect(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
