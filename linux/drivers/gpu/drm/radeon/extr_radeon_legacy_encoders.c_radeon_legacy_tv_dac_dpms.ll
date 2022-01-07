; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_tv_dac_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_tv_dac_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, i32, i64 }
%struct.radeon_encoder = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@CHIP_R200 = common dso_local global i64 0, align 8
@RADEON_FP2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_TV_MASTER_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_TV_DAC_CNTL = common dso_local global i32 0, align 4
@RADEON_FP2_ON = common dso_local global i32 0, align 4
@RADEON_FP2_DVO_EN = common dso_local global i32 0, align 4
@RADEON_TV_ON = common dso_local global i32 0, align 4
@RADEON_CRTC2_CRT2_ON = common dso_local global i32 0, align 4
@CHIP_R420 = common dso_local global i64 0, align 8
@CHIP_R423 = common dso_local global i64 0, align 8
@CHIP_RV410 = common dso_local global i64 0, align 8
@R420_TV_DAC_RDACPD = common dso_local global i32 0, align 4
@R420_TV_DAC_GDACPD = common dso_local global i32 0, align 4
@R420_TV_DAC_BDACPD = common dso_local global i32 0, align 4
@RADEON_TV_DAC_BGSLEEP = common dso_local global i32 0, align 4
@RADEON_TV_DAC_RDACPD = common dso_local global i32 0, align 4
@RADEON_TV_DAC_GDACPD = common dso_local global i32 0, align 4
@RADEON_TV_DAC_BDACPD = common dso_local global i32 0, align 4
@RADEON_SINGLE_CRTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @radeon_legacy_tv_dac_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_legacy_tv_dac_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %6, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %20 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %19)
  store %struct.radeon_encoder* %20, %struct.radeon_encoder** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %23 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  store i32 %29, i32* %12, align 4
  %30 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CHIP_R200, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %37 = call i32 @RREG32(i32 %36)
  store i32 %37, i32* %8, align 4
  br label %50

38:                                               ; preds = %2
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @RADEON_TV_MASTER_CNTL, align 4
  %43 = call i32 @RREG32(i32 %42)
  store i32 %43, i32* %11, align 4
  br label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %46 = call i32 @RREG32(i32 %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* @RADEON_TV_DAC_CNTL, align 4
  %49 = call i32 @RREG32(i32 %48)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %35
  %51 = load i32, i32* %4, align 4
  switch i32 %51, label %183 [
    i32 130, label %52
    i32 129, label %117
    i32 128, label %117
    i32 131, label %117
  ]

52:                                               ; preds = %50
  %53 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CHIP_R200, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* @RADEON_FP2_ON, align 4
  %60 = load i32, i32* @RADEON_FP2_DVO_EN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %116

64:                                               ; preds = %52
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* @RADEON_TV_ON, align 4
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @RADEON_CRTC2_CRT2_ON, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CHIP_R420, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %93, label %81

81:                                               ; preds = %75
  %82 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %83 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CHIP_R423, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CHIP_RV410, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %87, %81, %75
  %94 = load i32, i32* @R420_TV_DAC_RDACPD, align 4
  %95 = load i32, i32* @R420_TV_DAC_GDACPD, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @R420_TV_DAC_BDACPD, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @RADEON_TV_DAC_BGSLEEP, align 4
  %100 = or i32 %98, %99
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %10, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %115

104:                                              ; preds = %87
  %105 = load i32, i32* @RADEON_TV_DAC_RDACPD, align 4
  %106 = load i32, i32* @RADEON_TV_DAC_GDACPD, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @RADEON_TV_DAC_BDACPD, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @RADEON_TV_DAC_BGSLEEP, align 4
  %111 = or i32 %109, %110
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %10, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %104, %93
  br label %116

116:                                              ; preds = %115, %58
  br label %183

117:                                              ; preds = %50, %50, %50
  %118 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @CHIP_R200, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load i32, i32* @RADEON_FP2_ON, align 4
  %125 = load i32, i32* @RADEON_FP2_DVO_EN, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %8, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %182

130:                                              ; preds = %117
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32, i32* @RADEON_TV_ON, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %11, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %11, align 4
  br label %143

138:                                              ; preds = %130
  %139 = load i32, i32* @RADEON_CRTC2_CRT2_ON, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %9, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %138, %133
  %144 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @CHIP_R420, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %161, label %149

149:                                              ; preds = %143
  %150 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %151 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @CHIP_R423, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @CHIP_RV410, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %155, %149, %143
  %162 = load i32, i32* @R420_TV_DAC_RDACPD, align 4
  %163 = load i32, i32* @R420_TV_DAC_GDACPD, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @R420_TV_DAC_BDACPD, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @RADEON_TV_DAC_BGSLEEP, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* %10, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %10, align 4
  br label %181

171:                                              ; preds = %155
  %172 = load i32, i32* @RADEON_TV_DAC_RDACPD, align 4
  %173 = load i32, i32* @RADEON_TV_DAC_GDACPD, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @RADEON_TV_DAC_BDACPD, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @RADEON_TV_DAC_BGSLEEP, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* %10, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %171, %161
  br label %182

182:                                              ; preds = %181, %123
  br label %183

183:                                              ; preds = %50, %182, %116
  %184 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %185 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @CHIP_R200, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @WREG32(i32 %190, i32 %191)
  br label %216

193:                                              ; preds = %183
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load i32, i32* @RADEON_TV_MASTER_CNTL, align 4
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @WREG32(i32 %197, i32 %198)
  br label %212

200:                                              ; preds = %193
  %201 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %202 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %200
  %208 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @WREG32(i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %200
  br label %212

212:                                              ; preds = %211, %196
  %213 = load i32, i32* @RADEON_TV_DAC_CNTL, align 4
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @WREG32(i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %212, %189
  %217 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %218 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %223 = load i32, i32* %4, align 4
  %224 = icmp eq i32 %223, 130
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i32 1, i32 0
  %227 = call i32 @radeon_atombios_encoder_dpms_scratch_regs(%struct.drm_encoder* %222, i32 %226)
  br label %235

228:                                              ; preds = %216
  %229 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %230 = load i32, i32* %4, align 4
  %231 = icmp eq i32 %230, 130
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 1, i32 0
  %234 = call i32 @radeon_combios_encoder_dpms_scratch_regs(%struct.drm_encoder* %229, i32 %233)
  br label %235

235:                                              ; preds = %228, %221
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_atombios_encoder_dpms_scratch_regs(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_combios_encoder_dpms_scratch_regs(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
