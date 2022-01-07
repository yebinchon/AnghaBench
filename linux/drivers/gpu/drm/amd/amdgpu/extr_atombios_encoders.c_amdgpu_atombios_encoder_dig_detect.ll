; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_dig_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_dig_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_connector = type { i32 }
%struct.amdgpu_encoder = type { i32 }
%struct.amdgpu_connector = type { i32 }

@connector_status_unknown = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT_SUPPORT = common dso_local global i32 0, align 4
@EXTERNAL_ENCODER_ACTION_V3_DACLOAD_DETECTION = common dso_local global i32 0, align 4
@mmBIOS_SCRATCH_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Bios 0 scratch %x %08x\0A\00", align 1
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
define dso_local i32 @amdgpu_atombios_encoder_dig_detect(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_encoder*, align 8
  %9 = alloca %struct.amdgpu_connector*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %7, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %19 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %18)
  store %struct.amdgpu_encoder* %19, %struct.amdgpu_encoder** %8, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %21 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %20)
  store %struct.amdgpu_connector* %21, %struct.amdgpu_connector** %9, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %23 = call %struct.drm_encoder* @amdgpu_get_external_encoder(%struct.drm_encoder* %22)
  store %struct.drm_encoder* %23, %struct.drm_encoder** %10, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %25 = icmp ne %struct.drm_encoder* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @connector_status_unknown, align 4
  store i32 %27, i32* %3, align 4
  br label %124

28:                                               ; preds = %2
  %29 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %30 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ATOM_DEVICE_CRT_SUPPORT, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @connector_status_unknown, align 4
  store i32 %36, i32* %3, align 4
  br label %124

37:                                               ; preds = %28
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %39 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %40 = load i32, i32* @EXTERNAL_ENCODER_ACTION_V3_DACLOAD_DETECTION, align 4
  %41 = call i32 @amdgpu_atombios_encoder_setup_external_encoder(%struct.drm_encoder* %38, %struct.drm_encoder* %39, i32 %40)
  %42 = load i32, i32* @mmBIOS_SCRATCH_0, align 4
  %43 = call i32 @RREG32(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %8, align 8
  %46 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %50 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %37
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @ATOM_S0_CRT1_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @connector_status_connected, align 4
  store i32 %61, i32* %3, align 4
  br label %124

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %37
  %64 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %65 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @ATOM_S0_CRT2_MASK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @connector_status_connected, align 4
  store i32 %76, i32* %3, align 4
  br label %124

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %63
  %79 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %80 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @ATOM_S0_CV_MASK, align 4
  %88 = load i32, i32* @ATOM_S0_CV_MASK_A, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @connector_status_connected, align 4
  store i32 %93, i32* %3, align 4
  br label %124

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %78
  %96 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %97 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %95
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @ATOM_S0_TV1_COMPOSITE, align 4
  %105 = load i32, i32* @ATOM_S0_TV1_COMPOSITE_A, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @connector_status_connected, align 4
  store i32 %110, i32* %3, align 4
  br label %124

111:                                              ; preds = %102
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @ATOM_S0_TV1_SVIDEO, align 4
  %114 = load i32, i32* @ATOM_S0_TV1_SVIDEO_A, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @connector_status_connected, align 4
  store i32 %119, i32* %3, align 4
  br label %124

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121, %95
  %123 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %118, %109, %92, %75, %60, %35, %26
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @amdgpu_get_external_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_atombios_encoder_setup_external_encoder(%struct.drm_encoder*, %struct.drm_encoder*, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
