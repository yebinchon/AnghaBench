; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_encoder_dpms_scratch_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_encoder_dpms_scratch_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.radeon_encoder = type { i32 }

@CHIP_R600 = common dso_local global i64 0, align 8
@R600_BIOS_2_SCRATCH = common dso_local global i32 0, align 4
@RADEON_BIOS_2_SCRATCH = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S2_TV1_DPMS_STATE = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S2_CV_DPMS_STATE = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S2_CRT1_DPMS_STATE = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT2_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S2_CRT2_DPMS_STATE = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S2_LCD1_DPMS_STATE = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S2_DFP1_DPMS_STATE = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP2_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S2_DFP2_DPMS_STATE = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP3_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S2_DFP3_DPMS_STATE = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP4_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S2_DFP4_DPMS_STATE = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP5_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S2_DFP5_DPMS_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_atombios_encoder_dpms_scratch_regs(%struct.drm_encoder* %0, i32 %1) #0 {
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
  br label %247

21:                                               ; preds = %2
  %22 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHIP_R600, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @R600_BIOS_2_SCRATCH, align 4
  %29 = call i32 @RREG32(i32 %28)
  store i32 %29, i32* %8, align 4
  br label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @RADEON_BIOS_2_SCRATCH, align 4
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
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* @ATOM_S2_TV1_DPMS_STATE, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @ATOM_S2_TV1_DPMS_STATE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %43
  br label %53

53:                                               ; preds = %52, %33
  %54 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %55 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* @ATOM_S2_CV_DPMS_STATE, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %72

68:                                               ; preds = %60
  %69 = load i32, i32* @ATOM_S2_CV_DPMS_STATE, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %68, %63
  br label %73

73:                                               ; preds = %72, %53
  %74 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %75 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %73
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32, i32* @ATOM_S2_CRT1_DPMS_STATE, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %92

88:                                               ; preds = %80
  %89 = load i32, i32* @ATOM_S2_CRT1_DPMS_STATE, align 4
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %88, %83
  br label %93

93:                                               ; preds = %92, %73
  %94 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %95 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %93
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32, i32* @ATOM_S2_CRT2_DPMS_STATE, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %112

108:                                              ; preds = %100
  %109 = load i32, i32* @ATOM_S2_CRT2_DPMS_STATE, align 4
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %108, %103
  br label %113

113:                                              ; preds = %112, %93
  %114 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %115 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %113
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i32, i32* @ATOM_S2_LCD1_DPMS_STATE, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %132

128:                                              ; preds = %120
  %129 = load i32, i32* @ATOM_S2_LCD1_DPMS_STATE, align 4
  %130 = load i32, i32* %8, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %128, %123
  br label %133

133:                                              ; preds = %132, %113
  %134 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %135 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %133
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32, i32* @ATOM_S2_DFP1_DPMS_STATE, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %8, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %8, align 4
  br label %152

148:                                              ; preds = %140
  %149 = load i32, i32* @ATOM_S2_DFP1_DPMS_STATE, align 4
  %150 = load i32, i32* %8, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %148, %143
  br label %153

153:                                              ; preds = %152, %133
  %154 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %155 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %153
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i32, i32* @ATOM_S2_DFP2_DPMS_STATE, align 4
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %8, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %8, align 4
  br label %172

168:                                              ; preds = %160
  %169 = load i32, i32* @ATOM_S2_DFP2_DPMS_STATE, align 4
  %170 = load i32, i32* %8, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %168, %163
  br label %173

173:                                              ; preds = %172, %153
  %174 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %175 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @ATOM_DEVICE_DFP3_SUPPORT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %173
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load i32, i32* @ATOM_S2_DFP3_DPMS_STATE, align 4
  %185 = xor i32 %184, -1
  %186 = load i32, i32* %8, align 4
  %187 = and i32 %186, %185
  store i32 %187, i32* %8, align 4
  br label %192

188:                                              ; preds = %180
  %189 = load i32, i32* @ATOM_S2_DFP3_DPMS_STATE, align 4
  %190 = load i32, i32* %8, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %188, %183
  br label %193

193:                                              ; preds = %192, %173
  %194 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %195 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @ATOM_DEVICE_DFP4_SUPPORT, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %193
  %201 = load i32, i32* %4, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load i32, i32* @ATOM_S2_DFP4_DPMS_STATE, align 4
  %205 = xor i32 %204, -1
  %206 = load i32, i32* %8, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %8, align 4
  br label %212

208:                                              ; preds = %200
  %209 = load i32, i32* @ATOM_S2_DFP4_DPMS_STATE, align 4
  %210 = load i32, i32* %8, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %8, align 4
  br label %212

212:                                              ; preds = %208, %203
  br label %213

213:                                              ; preds = %212, %193
  %214 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %215 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @ATOM_DEVICE_DFP5_SUPPORT, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %213
  %221 = load i32, i32* %4, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = load i32, i32* @ATOM_S2_DFP5_DPMS_STATE, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %8, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %8, align 4
  br label %232

228:                                              ; preds = %220
  %229 = load i32, i32* @ATOM_S2_DFP5_DPMS_STATE, align 4
  %230 = load i32, i32* %8, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %8, align 4
  br label %232

232:                                              ; preds = %228, %223
  br label %233

233:                                              ; preds = %232, %213
  %234 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %235 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @CHIP_R600, align 8
  %238 = icmp sge i64 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = load i32, i32* @R600_BIOS_2_SCRATCH, align 4
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @WREG32(i32 %240, i32 %241)
  br label %247

243:                                              ; preds = %233
  %244 = load i32, i32* @RADEON_BIOS_2_SCRATCH, align 4
  %245 = load i32, i32* %8, align 4
  %246 = call i32 @WREG32(i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %20, %243, %239
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
