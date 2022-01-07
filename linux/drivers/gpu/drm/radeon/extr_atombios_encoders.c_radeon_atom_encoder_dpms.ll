; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { i32, i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"encoder dpms %d to mode %d, devices %08x, active_devices %08x\0A\00", align 1
@radeon_audio = common dso_local global i64 0, align 8
@ATOM_ENCODER_MODE_HDMI = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @radeon_atom_encoder_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atom_encoder_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %6, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %16 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %15)
  store %struct.radeon_encoder* %16, %struct.radeon_encoder** %7, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %18 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %20 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %27 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %25, i32 %28)
  %30 = load i64, i64* @radeon_audio, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @ENCODER_MODE_IS_DP(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %32
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @radeon_audio_dpms(%struct.drm_encoder* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %36, %2
  %45 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %46 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %105 [
    i32 132, label %48
    i32 135, label %48
    i32 134, label %48
    i32 133, label %48
    i32 140, label %48
    i32 141, label %48
    i32 142, label %48
    i32 138, label %48
    i32 131, label %52
    i32 130, label %52
    i32 129, label %52
    i32 128, label %52
    i32 136, label %52
    i32 137, label %56
    i32 143, label %85
    i32 139, label %85
  ]

48:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44
  %49 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @radeon_atom_encoder_dpms_avivo(%struct.drm_encoder* %49, i32 %50)
  br label %106

52:                                               ; preds = %44, %44, %44, %44, %44
  %53 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @radeon_atom_encoder_dpms_dig(%struct.drm_encoder* %53, i32 %54)
  br label %106

56:                                               ; preds = %44
  %57 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %58 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32, i32* %4, align 4
  switch i32 %61, label %70 [
    i32 146, label %62
    i32 145, label %66
    i32 144, label %66
    i32 147, label %66
  ]

62:                                               ; preds = %60
  %63 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %64 = load i32, i32* @ATOM_ENABLE, align 4
  %65 = call i32 @atombios_dvo_setup(%struct.drm_encoder* %63, i32 %64)
  br label %70

66:                                               ; preds = %60, %60, %60
  %67 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %68 = load i32, i32* @ATOM_DISABLE, align 4
  %69 = call i32 @atombios_dvo_setup(%struct.drm_encoder* %67, i32 %68)
  br label %70

70:                                               ; preds = %60, %66, %62
  br label %84

71:                                               ; preds = %56
  %72 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %73 = call i32 @ASIC_IS_DCE3(%struct.radeon_device* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @radeon_atom_encoder_dpms_dig(%struct.drm_encoder* %76, i32 %77)
  br label %83

79:                                               ; preds = %71
  %80 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @radeon_atom_encoder_dpms_avivo(%struct.drm_encoder* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %70
  br label %106

85:                                               ; preds = %44, %44
  %86 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %87 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load i32, i32* %4, align 4
  switch i32 %90, label %99 [
    i32 146, label %91
    i32 145, label %95
    i32 144, label %95
    i32 147, label %95
  ]

91:                                               ; preds = %89
  %92 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %93 = load i32, i32* @ATOM_ENABLE, align 4
  %94 = call i32 @atombios_dac_setup(%struct.drm_encoder* %92, i32 %93)
  br label %99

95:                                               ; preds = %89, %89, %89
  %96 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %97 = load i32, i32* @ATOM_DISABLE, align 4
  %98 = call i32 @atombios_dac_setup(%struct.drm_encoder* %96, i32 %97)
  br label %99

99:                                               ; preds = %89, %95, %91
  br label %104

100:                                              ; preds = %85
  %101 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @radeon_atom_encoder_dpms_avivo(%struct.drm_encoder* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %99
  br label %106

105:                                              ; preds = %44
  br label %113

106:                                              ; preds = %104, %84, %52, %48
  %107 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = icmp eq i32 %108, 146
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = call i32 @radeon_atombios_encoder_dpms_scratch_regs(%struct.drm_encoder* %107, i32 %111)
  br label %113

113:                                              ; preds = %106, %105
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @atombios_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @radeon_audio_dpms(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_atom_encoder_dpms_avivo(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_atom_encoder_dpms_dig(%struct.drm_encoder*, i32) #1

declare dso_local i32 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @atombios_dvo_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @atombios_dac_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_atombios_encoder_dpms_scratch_regs(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
