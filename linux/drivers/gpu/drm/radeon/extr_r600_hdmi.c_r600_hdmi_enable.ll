; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32 }

@HDMI0_ERROR_ACK = common dso_local global i32 0, align 4
@HDMI0_ENABLE = common dso_local global i32 0, align 4
@AVIVO_TMDSA_CNTL = common dso_local global i32 0, align 4
@AVIVO_TMDSA_CNTL_HDMI_EN = common dso_local global i32 0, align 4
@HDMI0_STREAM_TMDSA = common dso_local global i32 0, align 4
@AVIVO_LVTMA_CNTL = common dso_local global i32 0, align 4
@AVIVO_LVTMA_CNTL_HDMI_EN = common dso_local global i32 0, align 4
@HDMI0_STREAM_LVTMA = common dso_local global i32 0, align 4
@DDIA_CNTL = common dso_local global i32 0, align 4
@DDIA_HDMI_EN = common dso_local global i32 0, align 4
@HDMI0_STREAM_DDIA = common dso_local global i32 0, align 4
@HDMI0_STREAM_DVOA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid encoder for HDMI: 0x%X\0A\00", align 1
@HDMI0_CONTROL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"%sabling HDMI interface @ 0x%04X for encoder 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_hdmi_enable(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %6, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %17 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %16)
  store %struct.radeon_encoder* %17, %struct.radeon_encoder** %7, align 8
  %18 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %19 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %18, i32 0, i32 1
  %20 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %19, align 8
  store %struct.radeon_encoder_atom_dig* %20, %struct.radeon_encoder_atom_dig** %8, align 8
  %21 = load i32, i32* @HDMI0_ERROR_ACK, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %23 = icmp ne %struct.radeon_encoder_atom_dig* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %26 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %2
  br label %168

30:                                               ; preds = %24
  %31 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %32 = call i32 @ASIC_IS_DCE3(%struct.radeon_device* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %123, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @HDMI0_ENABLE, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %43 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %105 [
    i32 129, label %45
    i32 128, label %62
    i32 131, label %79
    i32 130, label %96
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* @AVIVO_TMDSA_CNTL, align 4
  %50 = load i32, i32* @AVIVO_TMDSA_CNTL_HDMI_EN, align 4
  %51 = call i32 @WREG32_OR(i32 %49, i32 %50)
  %52 = load i32, i32* @HDMI0_STREAM_TMDSA, align 4
  %53 = call i32 @HDMI0_STREAM(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %61

56:                                               ; preds = %45
  %57 = load i32, i32* @AVIVO_TMDSA_CNTL, align 4
  %58 = load i32, i32* @AVIVO_TMDSA_CNTL_HDMI_EN, align 4
  %59 = xor i32 %58, -1
  %60 = call i32 @WREG32_AND(i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %56, %48
  br label %113

62:                                               ; preds = %41
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i32, i32* @AVIVO_LVTMA_CNTL, align 4
  %67 = load i32, i32* @AVIVO_LVTMA_CNTL_HDMI_EN, align 4
  %68 = call i32 @WREG32_OR(i32 %66, i32 %67)
  %69 = load i32, i32* @HDMI0_STREAM_LVTMA, align 4
  %70 = call i32 @HDMI0_STREAM(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %78

73:                                               ; preds = %62
  %74 = load i32, i32* @AVIVO_LVTMA_CNTL, align 4
  %75 = load i32, i32* @AVIVO_LVTMA_CNTL_HDMI_EN, align 4
  %76 = xor i32 %75, -1
  %77 = call i32 @WREG32_AND(i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %73, %65
  br label %113

79:                                               ; preds = %41
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32, i32* @DDIA_CNTL, align 4
  %84 = load i32, i32* @DDIA_HDMI_EN, align 4
  %85 = call i32 @WREG32_OR(i32 %83, i32 %84)
  %86 = load i32, i32* @HDMI0_STREAM_DDIA, align 4
  %87 = call i32 @HDMI0_STREAM(i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %95

90:                                               ; preds = %79
  %91 = load i32, i32* @DDIA_CNTL, align 4
  %92 = load i32, i32* @DDIA_HDMI_EN, align 4
  %93 = xor i32 %92, -1
  %94 = call i32 @WREG32_AND(i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %90, %82
  br label %113

96:                                               ; preds = %41
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* @HDMI0_STREAM_DVOA, align 4
  %101 = call i32 @HDMI0_STREAM(i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %99, %96
  br label %113

105:                                              ; preds = %41
  %106 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %110 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %105, %104, %95, %78, %61
  %114 = load i64, i64* @HDMI0_CONTROL, align 8
  %115 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %116 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %114, %119
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @WREG32(i64 %120, i32 %121)
  br label %123

123:                                              ; preds = %113, %30
  %124 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %123
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %134 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %135 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @radeon_irq_kms_enable_afmt(%struct.radeon_device* %133, i32 %138)
  br label %148

140:                                              ; preds = %129
  %141 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %142 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %143 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @radeon_irq_kms_disable_afmt(%struct.radeon_device* %141, i32 %146)
  br label %148

148:                                              ; preds = %140, %132
  br label %149

149:                                              ; preds = %148, %123
  %150 = load i32, i32* %4, align 4
  %151 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %152 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  store i32 %150, i32* %154, align 8
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %159 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %160 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %165 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %158, i64 %163, i32 %166)
  br label %168

168:                                              ; preds = %149, %29
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_OR(i32, i32) #1

declare dso_local i32 @HDMI0_STREAM(i32) #1

declare dso_local i32 @WREG32_AND(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @radeon_irq_kms_enable_afmt(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_irq_kms_disable_afmt(%struct.radeon_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
