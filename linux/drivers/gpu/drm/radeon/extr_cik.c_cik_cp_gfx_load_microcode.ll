; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_cp_gfx_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_cp_gfx_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.gfx_firmware_header_v1_0 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@CP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@CP_CE_UCODE_ADDR = common dso_local global i32 0, align 4
@CP_CE_UCODE_DATA = common dso_local global i32 0, align 4
@CP_ME_RAM_WADDR = common dso_local global i32 0, align 4
@CP_ME_RAM_DATA = common dso_local global i32 0, align 4
@CP_ME_RAM_RADDR = common dso_local global i32 0, align 4
@CIK_PFP_UCODE_SIZE = common dso_local global i32 0, align 4
@CIK_CE_UCODE_SIZE = common dso_local global i32 0, align 4
@CIK_ME_UCODE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cik_cp_gfx_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_cp_gfx_load_microcode(%struct.radeon_device* %0) #0 {
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
  br label %276

28:                                               ; preds = %20
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = call i32 @cik_cp_gfx_enable(%struct.radeon_device* %29, i32 0)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %199

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
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %67, %73
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %8, align 8
  %76 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %77 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
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
  %100 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %101 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  %105 = call i32 @WREG32(i32 %99, i32 %104)
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %112 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le32_to_cpu(i32 %114)
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %110, %116
  %118 = inttoptr i64 %117 to i32*
  store i32* %118, i32** %8, align 8
  %119 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %120 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le32_to_cpu(i32 %122)
  %124 = sdiv i32 %123, 4
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* @CP_CE_UCODE_ADDR, align 4
  %126 = call i32 @WREG32(i32 %125, i32 0)
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %138, %98
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load i32, i32* @CP_CE_UCODE_DATA, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %8, align 8
  %135 = ptrtoint i32* %133 to i32
  %136 = call i32 @le32_to_cpup(i32 %135)
  %137 = call i32 @WREG32(i32 %132, i32 %136)
  br label %138

138:                                              ; preds = %131
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %127

141:                                              ; preds = %127
  %142 = load i32, i32* @CP_CE_UCODE_ADDR, align 4
  %143 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %144 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le32_to_cpu(i32 %146)
  %148 = call i32 @WREG32(i32 %142, i32 %147)
  %149 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %150 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %7, align 8
  %155 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le32_to_cpu(i32 %157)
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %153, %159
  %161 = inttoptr i64 %160 to i32*
  store i32* %161, i32** %8, align 8
  %162 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %7, align 8
  %163 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @le32_to_cpu(i32 %165)
  %167 = sdiv i32 %166, 4
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %169 = call i32 @WREG32(i32 %168, i32 0)
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %181, %141
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %170
  %175 = load i32, i32* @CP_ME_RAM_DATA, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %8, align 8
  %178 = ptrtoint i32* %176 to i32
  %179 = call i32 @le32_to_cpup(i32 %178)
  %180 = call i32 @WREG32(i32 %175, i32 %179)
  br label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %4, align 4
  br label %170

184:                                              ; preds = %170
  %185 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %186 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %7, align 8
  %187 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @le32_to_cpu(i32 %189)
  %191 = call i32 @WREG32(i32 %185, i32 %190)
  %192 = load i32, i32* @CP_ME_RAM_RADDR, align 4
  %193 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %7, align 8
  %194 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @le32_to_cpu(i32 %196)
  %198 = call i32 @WREG32(i32 %192, i32 %197)
  br label %275

199:                                              ; preds = %28
  %200 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %201 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %200, i32 0, i32 2
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to i32*
  store i32* %205, i32** %10, align 8
  %206 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %207 = call i32 @WREG32(i32 %206, i32 0)
  store i32 0, i32* %4, align 4
  br label %208

208:                                              ; preds = %219, %199
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @CIK_PFP_UCODE_SIZE, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %208
  %213 = load i32, i32* @CP_PFP_UCODE_DATA, align 4
  %214 = load i32*, i32** %10, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %10, align 8
  %216 = ptrtoint i32* %214 to i32
  %217 = call i32 @be32_to_cpup(i32 %216)
  %218 = call i32 @WREG32(i32 %213, i32 %217)
  br label %219

219:                                              ; preds = %212
  %220 = load i32, i32* %4, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %4, align 4
  br label %208

222:                                              ; preds = %208
  %223 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %224 = call i32 @WREG32(i32 %223, i32 0)
  %225 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %226 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %225, i32 0, i32 1
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to i32*
  store i32* %230, i32** %10, align 8
  %231 = load i32, i32* @CP_CE_UCODE_ADDR, align 4
  %232 = call i32 @WREG32(i32 %231, i32 0)
  store i32 0, i32* %4, align 4
  br label %233

233:                                              ; preds = %244, %222
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @CIK_CE_UCODE_SIZE, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %247

237:                                              ; preds = %233
  %238 = load i32, i32* @CP_CE_UCODE_DATA, align 4
  %239 = load i32*, i32** %10, align 8
  %240 = getelementptr inbounds i32, i32* %239, i32 1
  store i32* %240, i32** %10, align 8
  %241 = ptrtoint i32* %239 to i32
  %242 = call i32 @be32_to_cpup(i32 %241)
  %243 = call i32 @WREG32(i32 %238, i32 %242)
  br label %244

244:                                              ; preds = %237
  %245 = load i32, i32* %4, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %4, align 4
  br label %233

247:                                              ; preds = %233
  %248 = load i32, i32* @CP_CE_UCODE_ADDR, align 4
  %249 = call i32 @WREG32(i32 %248, i32 0)
  %250 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %251 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %250, i32 0, i32 0
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = inttoptr i64 %254 to i32*
  store i32* %255, i32** %10, align 8
  %256 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %257 = call i32 @WREG32(i32 %256, i32 0)
  store i32 0, i32* %4, align 4
  br label %258

258:                                              ; preds = %269, %247
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @CIK_ME_UCODE_SIZE, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %272

262:                                              ; preds = %258
  %263 = load i32, i32* @CP_ME_RAM_DATA, align 4
  %264 = load i32*, i32** %10, align 8
  %265 = getelementptr inbounds i32, i32* %264, i32 1
  store i32* %265, i32** %10, align 8
  %266 = ptrtoint i32* %264 to i32
  %267 = call i32 @be32_to_cpup(i32 %266)
  %268 = call i32 @WREG32(i32 %263, i32 %267)
  br label %269

269:                                              ; preds = %262
  %270 = load i32, i32* %4, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %4, align 4
  br label %258

272:                                              ; preds = %258
  %273 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %274 = call i32 @WREG32(i32 %273, i32 0)
  br label %275

275:                                              ; preds = %272, %184
  store i32 0, i32* %2, align 4
  br label %276

276:                                              ; preds = %275, %25
  %277 = load i32, i32* %2, align 4
  ret i32 %277
}

declare dso_local i32 @cik_cp_gfx_enable(%struct.radeon_device*, i32) #1

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
