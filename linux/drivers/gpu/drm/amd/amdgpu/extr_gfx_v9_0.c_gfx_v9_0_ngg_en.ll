; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_ngg_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_ngg_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.amdgpu_ring* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.amdgpu_ring = type { i32 }
%struct.TYPE_6__ = type { i64 }

@amdgpu_ngg = common dso_local global i32 0, align 4
@WD_BUF_RESOURCE_1 = common dso_local global i32 0, align 4
@INDEX_BUF_SIZE = common dso_local global i32 0, align 4
@NGG_PRIM = common dso_local global i64 0, align 8
@POS_BUF_SIZE = common dso_local global i32 0, align 4
@NGG_POS = common dso_local global i64 0, align 8
@GC = common dso_local global i32 0, align 4
@mmWD_BUF_RESOURCE_1 = common dso_local global i32 0, align 4
@WD_BUF_RESOURCE_2 = common dso_local global i32 0, align 4
@CNTL_SB_BUF_SIZE = common dso_local global i32 0, align 4
@NGG_CNTL = common dso_local global i64 0, align 8
@PARAM_BUF_SIZE = common dso_local global i32 0, align 4
@NGG_PARAM = common dso_local global i64 0, align 8
@mmWD_BUF_RESOURCE_2 = common dso_local global i32 0, align 4
@WD_INDEX_BUF_BASE = common dso_local global i32 0, align 4
@BASE = common dso_local global i32 0, align 4
@mmWD_INDEX_BUF_BASE = common dso_local global i32 0, align 4
@WD_INDEX_BUF_BASE_HI = common dso_local global i32 0, align 4
@BASE_HI = common dso_local global i32 0, align 4
@mmWD_INDEX_BUF_BASE_HI = common dso_local global i32 0, align 4
@WD_POS_BUF_BASE = common dso_local global i32 0, align 4
@mmWD_POS_BUF_BASE = common dso_local global i32 0, align 4
@WD_POS_BUF_BASE_HI = common dso_local global i32 0, align 4
@mmWD_POS_BUF_BASE_HI = common dso_local global i32 0, align 4
@WD_CNTL_SB_BUF_BASE = common dso_local global i32 0, align 4
@mmWD_CNTL_SB_BUF_BASE = common dso_local global i32 0, align 4
@WD_CNTL_SB_BUF_BASE_HI = common dso_local global i32 0, align 4
@mmWD_CNTL_SB_BUF_BASE_HI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"amdgpu: NGG failed to lock ring %s (%d).\0A\00", align 1
@mmGDS_VMID0_SIZE = common dso_local global i32 0, align 4
@PACKET3_DMA_DATA = common dso_local global i32 0, align 4
@PACKET3_DMA_DATA_CP_SYNC = common dso_local global i32 0, align 4
@PACKET3_DMA_DATA_CMD_RAW_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v9_0_ngg_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_ngg_en(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %12 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %11, i64 0
  store %struct.amdgpu_ring* %12, %struct.amdgpu_ring** %4, align 8
  %13 = load i32, i32* @amdgpu_ngg, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %255

16:                                               ; preds = %1
  %17 = load i32, i32* @WD_BUF_RESOURCE_1, align 4
  %18 = load i32, i32* @INDEX_BUF_SIZE, align 4
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i64, i64* @NGG_PRIM, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 8
  %29 = call i32 @REG_SET_FIELD(i32 0, i32 %17, i32 %18, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @WD_BUF_RESOURCE_1, align 4
  %32 = load i32, i32* @POS_BUF_SIZE, align 4
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i64, i64* @NGG_POS, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 8
  %43 = call i32 @REG_SET_FIELD(i32 %30, i32 %31, i32 %32, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @GC, align 4
  %45 = load i32, i32* @mmWD_BUF_RESOURCE_1, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @WREG32_SOC15(i32 %44, i32 0, i32 %45, i32 %46)
  %48 = load i32, i32* @WD_BUF_RESOURCE_2, align 4
  %49 = load i32, i32* @CNTL_SB_BUF_SIZE, align 4
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i64, i64* @NGG_CNTL, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 8
  %60 = call i32 @REG_SET_FIELD(i32 0, i32 %48, i32 %49, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @WD_BUF_RESOURCE_2, align 4
  %63 = load i32, i32* @PARAM_BUF_SIZE, align 4
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i64, i64* @NGG_PARAM, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 10
  %74 = call i32 @REG_SET_FIELD(i32 %61, i32 %62, i32 %63, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* @GC, align 4
  %76 = load i32, i32* @mmWD_BUF_RESOURCE_2, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @WREG32_SOC15(i32 %75, i32 0, i32 %76, i32 %77)
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i64, i64* @NGG_PRIM, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @lower_32_bits(i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* @WD_INDEX_BUF_BASE, align 4
  %90 = load i32, i32* @BASE, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @REG_SET_FIELD(i32 0, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @GC, align 4
  %94 = load i32, i32* @mmWD_INDEX_BUF_BASE, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @WREG32_SOC15(i32 %93, i32 0, i32 %94, i32 %95)
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i64, i64* @NGG_PRIM, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @upper_32_bits(i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* @WD_INDEX_BUF_BASE_HI, align 4
  %108 = load i32, i32* @BASE_HI, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @REG_SET_FIELD(i32 0, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @GC, align 4
  %112 = load i32, i32* @mmWD_INDEX_BUF_BASE_HI, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @WREG32_SOC15(i32 %111, i32 0, i32 %112, i32 %113)
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load i64, i64* @NGG_POS, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @lower_32_bits(i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* @WD_POS_BUF_BASE, align 4
  %126 = load i32, i32* @BASE, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @REG_SET_FIELD(i32 0, i32 %125, i32 %126, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* @GC, align 4
  %130 = load i32, i32* @mmWD_POS_BUF_BASE, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @WREG32_SOC15(i32 %129, i32 0, i32 %130, i32 %131)
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load i64, i64* @NGG_POS, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @upper_32_bits(i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* @WD_POS_BUF_BASE_HI, align 4
  %144 = load i32, i32* @BASE_HI, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @REG_SET_FIELD(i32 0, i32 %143, i32 %144, i32 %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* @GC, align 4
  %148 = load i32, i32* @mmWD_POS_BUF_BASE_HI, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @WREG32_SOC15(i32 %147, i32 0, i32 %148, i32 %149)
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %152 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = load i64, i64* @NGG_CNTL, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @lower_32_bits(i32 %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* @WD_CNTL_SB_BUF_BASE, align 4
  %162 = load i32, i32* @BASE, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @REG_SET_FIELD(i32 0, i32 %161, i32 %162, i32 %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* @GC, align 4
  %166 = load i32, i32* @mmWD_CNTL_SB_BUF_BASE, align 4
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @WREG32_SOC15(i32 %165, i32 0, i32 %166, i32 %167)
  %169 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %170 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = load i64, i64* @NGG_CNTL, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @upper_32_bits(i32 %177)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* @WD_CNTL_SB_BUF_BASE_HI, align 4
  %180 = load i32, i32* @BASE_HI, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @REG_SET_FIELD(i32 0, i32 %179, i32 %180, i32 %181)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* @GC, align 4
  %184 = load i32, i32* @mmWD_CNTL_SB_BUF_BASE_HI, align 4
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @WREG32_SOC15(i32 %183, i32 0, i32 %184, i32 %185)
  %187 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %188 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %187, i32 17)
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %16
  %192 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %193 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %194, i32 %195)
  %197 = load i32, i32* %5, align 4
  store i32 %197, i32* %2, align 4
  br label %255

198:                                              ; preds = %16
  %199 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %200 = load i32, i32* @GC, align 4
  %201 = load i32, i32* @mmGDS_VMID0_SIZE, align 4
  %202 = call i32 @SOC15_REG_OFFSET(i32 %200, i32 0, i32 %201)
  %203 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %204 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %208 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %206, %212
  %214 = call i32 @gfx_v9_0_write_data_to_reg(%struct.amdgpu_ring* %199, i32 0, i32 0, i32 %202, i64 %213)
  %215 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %216 = load i32, i32* @PACKET3_DMA_DATA, align 4
  %217 = call i32 @PACKET3(i32 %216, i32 5)
  %218 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %215, i32 %217)
  %219 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %220 = load i32, i32* @PACKET3_DMA_DATA_CP_SYNC, align 4
  %221 = call i32 @PACKET3_DMA_DATA_DST_SEL(i32 1)
  %222 = or i32 %220, %221
  %223 = call i32 @PACKET3_DMA_DATA_SRC_SEL(i32 2)
  %224 = or i32 %222, %223
  %225 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %219, i32 %224)
  %226 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %227 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %226, i32 0)
  %228 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %229 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %228, i32 0)
  %230 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %231 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %232 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %230, i32 %235)
  %237 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %238 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %237, i32 0)
  %239 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %240 = load i32, i32* @PACKET3_DMA_DATA_CMD_RAW_WAIT, align 4
  %241 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %242 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %240, %245
  %247 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %239, i32 %246)
  %248 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %249 = load i32, i32* @GC, align 4
  %250 = load i32, i32* @mmGDS_VMID0_SIZE, align 4
  %251 = call i32 @SOC15_REG_OFFSET(i32 %249, i32 0, i32 %250)
  %252 = call i32 @gfx_v9_0_write_data_to_reg(%struct.amdgpu_ring* %248, i32 0, i32 0, i32 %251, i64 0)
  %253 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %254 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %253)
  store i32 0, i32* %2, align 4
  br label %255

255:                                              ; preds = %198, %191, %15
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @gfx_v9_0_write_data_to_reg(%struct.amdgpu_ring*, i32, i32, i32, i64) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_DMA_DATA_DST_SEL(i32) #1

declare dso_local i32 @PACKET3_DMA_DATA_SRC_SEL(i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
