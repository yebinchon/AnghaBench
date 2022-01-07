; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_cp_gfx_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_cp_gfx_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.gfx_firmware_header_v1_0 = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@mmCP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@mmCP_CE_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_CE_UCODE_DATA = common dso_local global i32 0, align 4
@mmCP_ME_RAM_WADDR = common dso_local global i32 0, align 4
@mmCP_ME_RAM_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v7_0_cp_gfx_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v7_0_cp_gfx_load_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %5 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %6 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 7
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21, %15, %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %237

30:                                               ; preds = %21
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %37, %struct.gfx_firmware_header_v1_0** %4, align 8
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 7
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %44, %struct.gfx_firmware_header_v1_0** %5, align 8
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %51, %struct.gfx_firmware_header_v1_0** %6, align 8
  %52 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %53 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %52, i32 0, i32 0
  %54 = call i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__* %53)
  %55 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %56 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %55, i32 0, i32 0
  %57 = call i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__* %56)
  %58 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %59 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %58, i32 0, i32 0
  %60 = call i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__* %59)
  %61 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %62 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %70 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %78 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %86 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  store i32 %88, i32* %91, align 4
  %92 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %93 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 4
  store i32 %95, i32* %98, align 8
  %99 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %100 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le32_to_cpu(i32 %101)
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 5
  store i32 %102, i32* %105, align 4
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %107 = call i32 @gfx_v7_0_cp_gfx_enable(%struct.amdgpu_device* %106, i32 0)
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %115 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le32_to_cpu(i32 %117)
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %113, %119
  %121 = inttoptr i64 %120 to i32*
  store i32* %121, i32** %7, align 8
  %122 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %123 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @le32_to_cpu(i32 %125)
  %127 = sdiv i32 %126, 4
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* @mmCP_PFP_UCODE_ADDR, align 4
  %129 = call i32 @WREG32(i32 %128, i32 0)
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %141, %30
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i32, i32* @mmCP_PFP_UCODE_DATA, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %7, align 8
  %138 = ptrtoint i32* %136 to i32
  %139 = call i32 @le32_to_cpup(i32 %138)
  %140 = call i32 @WREG32(i32 %135, i32 %139)
  br label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %8, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %130

144:                                              ; preds = %130
  %145 = load i32, i32* @mmCP_PFP_UCODE_ADDR, align 4
  %146 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %147 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @WREG32(i32 %145, i32 %149)
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %152 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 7
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %158 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @le32_to_cpu(i32 %160)
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %156, %162
  %164 = inttoptr i64 %163 to i32*
  store i32* %164, i32** %7, align 8
  %165 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %166 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @le32_to_cpu(i32 %168)
  %170 = sdiv i32 %169, 4
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* @mmCP_CE_UCODE_ADDR, align 4
  %172 = call i32 @WREG32(i32 %171, i32 0)
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %184, %144
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %173
  %178 = load i32, i32* @mmCP_CE_UCODE_DATA, align 4
  %179 = load i32*, i32** %7, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %7, align 8
  %181 = ptrtoint i32* %179 to i32
  %182 = call i32 @le32_to_cpup(i32 %181)
  %183 = call i32 @WREG32(i32 %178, i32 %182)
  br label %184

184:                                              ; preds = %177
  %185 = load i32, i32* %8, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %173

187:                                              ; preds = %173
  %188 = load i32, i32* @mmCP_CE_UCODE_ADDR, align 4
  %189 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %190 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @WREG32(i32 %188, i32 %192)
  %194 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %195 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 6
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %201 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @le32_to_cpu(i32 %203)
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %199, %205
  %207 = inttoptr i64 %206 to i32*
  store i32* %207, i32** %7, align 8
  %208 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %209 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @le32_to_cpu(i32 %211)
  %213 = sdiv i32 %212, 4
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* @mmCP_ME_RAM_WADDR, align 4
  %215 = call i32 @WREG32(i32 %214, i32 0)
  store i32 0, i32* %8, align 4
  br label %216

216:                                              ; preds = %227, %187
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp ult i32 %217, %218
  br i1 %219, label %220, label %230

220:                                              ; preds = %216
  %221 = load i32, i32* @mmCP_ME_RAM_DATA, align 4
  %222 = load i32*, i32** %7, align 8
  %223 = getelementptr inbounds i32, i32* %222, i32 1
  store i32* %223, i32** %7, align 8
  %224 = ptrtoint i32* %222 to i32
  %225 = call i32 @le32_to_cpup(i32 %224)
  %226 = call i32 @WREG32(i32 %221, i32 %225)
  br label %227

227:                                              ; preds = %220
  %228 = load i32, i32* %8, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %216

230:                                              ; preds = %216
  %231 = load i32, i32* @mmCP_ME_RAM_WADDR, align 4
  %232 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %233 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @WREG32(i32 %231, i32 %235)
  store i32 0, i32* %2, align 4
  br label %237

237:                                              ; preds = %230, %27
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @gfx_v7_0_cp_gfx_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @le32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
