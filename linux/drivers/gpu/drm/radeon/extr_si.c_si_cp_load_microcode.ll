; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_cp_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_cp_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.gfx_firmware_header_v1_0 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@CP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@CP_CE_UCODE_ADDR = common dso_local global i32 0, align 4
@CP_CE_UCODE_DATA = common dso_local global i32 0, align 4
@CP_ME_RAM_WADDR = common dso_local global i32 0, align 4
@CP_ME_RAM_DATA = common dso_local global i32 0, align 4
@SI_PFP_UCODE_SIZE = common dso_local global i32 0, align 4
@SI_CE_UCODE_SIZE = common dso_local global i32 0, align 4
@SI_PM4_UCODE_SIZE = common dso_local global i32 0, align 4
@CP_ME_RAM_RADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_cp_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_cp_load_microcode(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %6 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %7 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %15, %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %262

28:                                               ; preds = %20
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = call i32 @si_cp_enable(%struct.radeon_device* %29, i32 0)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %177

35:                                               ; preds = %28
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %41, %struct.gfx_firmware_header_v1_0** %5, align 8
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %47, %struct.gfx_firmware_header_v1_0** %6, align 8
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %53, %struct.gfx_firmware_header_v1_0** %7, align 8
  %54 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %55 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %54, i32 0, i32 0
  %56 = call i32 @radeon_ucode_print_gfx_hdr(%struct.TYPE_8__* %55)
  %57 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %58 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %57, i32 0, i32 0
  %59 = call i32 @radeon_ucode_print_gfx_hdr(%struct.TYPE_8__* %58)
  %60 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %7, align 8
  %61 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %60, i32 0, i32 0
  %62 = call i32 @radeon_ucode_print_gfx_hdr(%struct.TYPE_8__* %61)
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %69 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %67, %73
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %8, align 8
  %76 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %77 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = sdiv i32 %80, 4
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %83 = call i32 @WREG32(i32 %82, i32 0)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %95, %35
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load i32, i32* @CP_PFP_UCODE_DATA, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %8, align 8
  %92 = ptrtoint i32* %90 to i32
  %93 = call i32 @le32_to_cpup(i32 %92)
  %94 = call i32 @WREG32(i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %84

98:                                               ; preds = %84
  %99 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %100 = call i32 @WREG32(i32 %99, i32 0)
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %107 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le32_to_cpu(i32 %109)
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %105, %111
  %113 = inttoptr i64 %112 to i32*
  store i32* %113, i32** %8, align 8
  %114 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %115 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le32_to_cpu(i32 %117)
  %119 = sdiv i32 %118, 4
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* @CP_CE_UCODE_ADDR, align 4
  %121 = call i32 @WREG32(i32 %120, i32 0)
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %133, %98
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %122
  %127 = load i32, i32* @CP_CE_UCODE_DATA, align 4
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %8, align 8
  %130 = ptrtoint i32* %128 to i32
  %131 = call i32 @le32_to_cpup(i32 %130)
  %132 = call i32 @WREG32(i32 %127, i32 %131)
  br label %133

133:                                              ; preds = %126
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %122

136:                                              ; preds = %122
  %137 = load i32, i32* @CP_CE_UCODE_ADDR, align 4
  %138 = call i32 @WREG32(i32 %137, i32 0)
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 0
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %7, align 8
  %145 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le32_to_cpu(i32 %147)
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %143, %149
  %151 = inttoptr i64 %150 to i32*
  store i32* %151, i32** %8, align 8
  %152 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %7, align 8
  %153 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @le32_to_cpu(i32 %155)
  %157 = sdiv i32 %156, 4
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %159 = call i32 @WREG32(i32 %158, i32 0)
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %171, %136
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %160
  %165 = load i32, i32* @CP_ME_RAM_DATA, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %8, align 8
  %168 = ptrtoint i32* %166 to i32
  %169 = call i32 @le32_to_cpup(i32 %168)
  %170 = call i32 @WREG32(i32 %165, i32 %169)
  br label %171

171:                                              ; preds = %164
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %4, align 4
  br label %160

174:                                              ; preds = %160
  %175 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %176 = call i32 @WREG32(i32 %175, i32 0)
  br label %253

177:                                              ; preds = %28
  %178 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %179 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %178, i32 0, i32 2
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = inttoptr i64 %182 to i32*
  store i32* %183, i32** %10, align 8
  %184 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %185 = call i32 @WREG32(i32 %184, i32 0)
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %197, %177
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @SI_PFP_UCODE_SIZE, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %186
  %191 = load i32, i32* @CP_PFP_UCODE_DATA, align 4
  %192 = load i32*, i32** %10, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %10, align 8
  %194 = ptrtoint i32* %192 to i32
  %195 = call i32 @be32_to_cpup(i32 %194)
  %196 = call i32 @WREG32(i32 %191, i32 %195)
  br label %197

197:                                              ; preds = %190
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %4, align 4
  br label %186

200:                                              ; preds = %186
  %201 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %202 = call i32 @WREG32(i32 %201, i32 0)
  %203 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %204 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %203, i32 0, i32 1
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = inttoptr i64 %207 to i32*
  store i32* %208, i32** %10, align 8
  %209 = load i32, i32* @CP_CE_UCODE_ADDR, align 4
  %210 = call i32 @WREG32(i32 %209, i32 0)
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %222, %200
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* @SI_CE_UCODE_SIZE, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %225

215:                                              ; preds = %211
  %216 = load i32, i32* @CP_CE_UCODE_DATA, align 4
  %217 = load i32*, i32** %10, align 8
  %218 = getelementptr inbounds i32, i32* %217, i32 1
  store i32* %218, i32** %10, align 8
  %219 = ptrtoint i32* %217 to i32
  %220 = call i32 @be32_to_cpup(i32 %219)
  %221 = call i32 @WREG32(i32 %216, i32 %220)
  br label %222

222:                                              ; preds = %215
  %223 = load i32, i32* %4, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %4, align 4
  br label %211

225:                                              ; preds = %211
  %226 = load i32, i32* @CP_CE_UCODE_ADDR, align 4
  %227 = call i32 @WREG32(i32 %226, i32 0)
  %228 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %229 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %228, i32 0, i32 0
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = inttoptr i64 %232 to i32*
  store i32* %233, i32** %10, align 8
  %234 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %235 = call i32 @WREG32(i32 %234, i32 0)
  store i32 0, i32* %4, align 4
  br label %236

236:                                              ; preds = %247, %225
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* @SI_PM4_UCODE_SIZE, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %236
  %241 = load i32, i32* @CP_ME_RAM_DATA, align 4
  %242 = load i32*, i32** %10, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %10, align 8
  %244 = ptrtoint i32* %242 to i32
  %245 = call i32 @be32_to_cpup(i32 %244)
  %246 = call i32 @WREG32(i32 %241, i32 %245)
  br label %247

247:                                              ; preds = %240
  %248 = load i32, i32* %4, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %4, align 4
  br label %236

250:                                              ; preds = %236
  %251 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %252 = call i32 @WREG32(i32 %251, i32 0)
  br label %253

253:                                              ; preds = %250, %174
  %254 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %255 = call i32 @WREG32(i32 %254, i32 0)
  %256 = load i32, i32* @CP_CE_UCODE_ADDR, align 4
  %257 = call i32 @WREG32(i32 %256, i32 0)
  %258 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %259 = call i32 @WREG32(i32 %258, i32 0)
  %260 = load i32, i32* @CP_ME_RAM_RADDR, align 4
  %261 = call i32 @WREG32(i32 %260, i32 0)
  store i32 0, i32* %2, align 4
  br label %262

262:                                              ; preds = %253, %25
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local i32 @si_cp_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_ucode_print_gfx_hdr(%struct.TYPE_8__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @le32_to_cpup(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
