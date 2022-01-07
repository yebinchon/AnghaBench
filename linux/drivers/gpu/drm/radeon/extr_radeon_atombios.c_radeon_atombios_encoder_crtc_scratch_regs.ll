; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_encoder_crtc_scratch_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_encoder_crtc_scratch_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.radeon_encoder = type { i32 }

@CHIP_R600 = common dso_local global i64 0, align 8
@R600_BIOS_3_SCRATCH = common dso_local global i32 0, align 4
@RADEON_BIOS_3_SCRATCH = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S3_TV1_CRTC_ACTIVE = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S3_CV_CRTC_ACTIVE = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S3_CRT1_CRTC_ACTIVE = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT2_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S3_CRT2_CRTC_ACTIVE = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S3_LCD1_CRTC_ACTIVE = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S3_DFP1_CRTC_ACTIVE = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP2_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S3_DFP2_CRTC_ACTIVE = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP3_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S3_DFP3_CRTC_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_atombios_encoder_crtc_scratch_regs(%struct.drm_encoder* %0, i32 %1) #0 {
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
  %17 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %18 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %175

21:                                               ; preds = %2
  %22 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHIP_R600, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @R600_BIOS_3_SCRATCH, align 4
  %29 = call i32 @RREG32(i32 %28)
  store i32 %29, i32* %8, align 4
  br label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @RADEON_BIOS_3_SCRATCH, align 4
  %32 = call i32 @RREG32(i32 %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %35 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i32, i32* @ATOM_S3_TV1_CRTC_ACTIVE, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = shl i32 %45, 18
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %40, %33
  %50 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %51 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load i32, i32* @ATOM_S3_CV_CRTC_ACTIVE, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %4, align 4
  %62 = shl i32 %61, 24
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %56, %49
  %66 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %67 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load i32, i32* @ATOM_S3_CRT1_CRTC_ACTIVE, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %4, align 4
  %78 = shl i32 %77, 16
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %72, %65
  %82 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %83 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load i32, i32* @ATOM_S3_CRT2_CRTC_ACTIVE, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %4, align 4
  %94 = shl i32 %93, 20
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %88, %81
  %98 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %99 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load i32, i32* @ATOM_S3_LCD1_CRTC_ACTIVE, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %4, align 4
  %110 = shl i32 %109, 17
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %104, %97
  %114 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %115 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load i32, i32* @ATOM_S3_DFP1_CRTC_ACTIVE, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %4, align 4
  %126 = shl i32 %125, 19
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %120, %113
  %130 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %131 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %129
  %137 = load i32, i32* @ATOM_S3_DFP2_CRTC_ACTIVE, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %8, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %4, align 4
  %142 = shl i32 %141, 23
  %143 = load i32, i32* %8, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %136, %129
  %146 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %147 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @ATOM_DEVICE_DFP3_SUPPORT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %145
  %153 = load i32, i32* @ATOM_S3_DFP3_CRTC_ACTIVE, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %8, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %4, align 4
  %158 = shl i32 %157, 25
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %152, %145
  %162 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @CHIP_R600, align 8
  %166 = icmp sge i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load i32, i32* @R600_BIOS_3_SCRATCH, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @WREG32(i32 %168, i32 %169)
  br label %175

171:                                              ; preds = %161
  %172 = load i32, i32* @RADEON_BIOS_3_SCRATCH, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @WREG32(i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %20, %171, %167
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
