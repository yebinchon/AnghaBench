; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_mc_resume_dpg_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_mc_resume_dpg_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@UVD = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@AMDGPU_UCODE_ID_VCN = common dso_local global i64 0, align 8
@mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET0 = common dso_local global i32 0, align 4
@AMDGPU_UVD_FIRMWARE_OFFSET = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE0 = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET1 = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE1 = common dso_local global i32 0, align 4
@AMDGPU_VCN_STACK_SIZE = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET2 = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE2 = common dso_local global i32 0, align 4
@AMDGPU_VCN_CONTEXT_SIZE = common dso_local global i32 0, align 4
@mmUVD_UDEC_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_UDEC_DB_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_UDEC_DBW_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_UDEC_DBW_UV_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_MIF_CURR_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_MIF_CURR_UV_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_MIF_RECON1_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_MIF_RECON1_UV_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_MIF_REF_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_MIF_REF_UV_ADDR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @vcn_v1_0_mc_resume_dpg_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v1_0_mc_resume_dpg_mode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 4
  %12 = call i32 @AMDGPU_GPU_PAGE_ALIGN(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %1
  %20 = load i32, i32* @UVD, align 4
  %21 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW, align 4
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WREG32_SOC15_DPG_MODE(i32 %20, i32 0, i32 %21, i32 %29, i32 -1, i32 0)
  %31 = load i32, i32* @UVD, align 4
  %32 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH, align 4
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WREG32_SOC15_DPG_MODE(i32 %31, i32 0, i32 %32, i32 %40, i32 -1, i32 0)
  %42 = load i32, i32* @UVD, align 4
  %43 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET0, align 4
  %44 = call i32 @WREG32_SOC15_DPG_MODE(i32 %42, i32 0, i32 %43, i32 0, i32 -1, i32 0)
  store i32 0, i32* %4, align 4
  br label %72

45:                                               ; preds = %1
  %46 = load i32, i32* @UVD, align 4
  %47 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW, align 4
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @lower_32_bits(i32 %53)
  %55 = call i32 @WREG32_SOC15_DPG_MODE(i32 %46, i32 0, i32 %47, i32 %54, i32 -1, i32 0)
  %56 = load i32, i32* @UVD, align 4
  %57 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH, align 4
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @upper_32_bits(i32 %63)
  %65 = call i32 @WREG32_SOC15_DPG_MODE(i32 %56, i32 0, i32 %57, i32 %64, i32 -1, i32 0)
  %66 = load i32, i32* %3, align 4
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @UVD, align 4
  %68 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET0, align 4
  %69 = load i32, i32* @AMDGPU_UVD_FIRMWARE_OFFSET, align 4
  %70 = ashr i32 %69, 3
  %71 = call i32 @WREG32_SOC15_DPG_MODE(i32 %67, i32 0, i32 %68, i32 %70, i32 -1, i32 0)
  br label %72

72:                                               ; preds = %45, %19
  %73 = load i32, i32* @UVD, align 4
  %74 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE0, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @WREG32_SOC15_DPG_MODE(i32 %73, i32 0, i32 %74, i32 %75, i32 -1, i32 0)
  %77 = load i32, i32* @UVD, align 4
  %78 = load i32, i32* @mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_LOW, align 4
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %84, %85
  %87 = call i32 @lower_32_bits(i32 %86)
  %88 = call i32 @WREG32_SOC15_DPG_MODE(i32 %77, i32 0, i32 %78, i32 %87, i32 -1, i32 0)
  %89 = load i32, i32* @UVD, align 4
  %90 = load i32, i32* @mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_HIGH, align 4
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 @upper_32_bits(i32 %98)
  %100 = call i32 @WREG32_SOC15_DPG_MODE(i32 %89, i32 0, i32 %90, i32 %99, i32 -1, i32 0)
  %101 = load i32, i32* @UVD, align 4
  %102 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET1, align 4
  %103 = call i32 @WREG32_SOC15_DPG_MODE(i32 %101, i32 0, i32 %102, i32 0, i32 -1, i32 0)
  %104 = load i32, i32* @UVD, align 4
  %105 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE1, align 4
  %106 = load i32, i32* @AMDGPU_VCN_STACK_SIZE, align 4
  %107 = call i32 @WREG32_SOC15_DPG_MODE(i32 %104, i32 0, i32 %105, i32 %106, i32 -1, i32 0)
  %108 = load i32, i32* @UVD, align 4
  %109 = load i32, i32* @mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_LOW, align 4
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* @AMDGPU_VCN_STACK_SIZE, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @lower_32_bits(i32 %119)
  %121 = call i32 @WREG32_SOC15_DPG_MODE(i32 %108, i32 0, i32 %109, i32 %120, i32 -1, i32 0)
  %122 = load i32, i32* @UVD, align 4
  %123 = load i32, i32* @mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_HIGH, align 4
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* @AMDGPU_VCN_STACK_SIZE, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i32 @upper_32_bits(i32 %133)
  %135 = call i32 @WREG32_SOC15_DPG_MODE(i32 %122, i32 0, i32 %123, i32 %134, i32 -1, i32 0)
  %136 = load i32, i32* @UVD, align 4
  %137 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET2, align 4
  %138 = call i32 @WREG32_SOC15_DPG_MODE(i32 %136, i32 0, i32 %137, i32 0, i32 -1, i32 0)
  %139 = load i32, i32* @UVD, align 4
  %140 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE2, align 4
  %141 = load i32, i32* @AMDGPU_VCN_CONTEXT_SIZE, align 4
  %142 = call i32 @WREG32_SOC15_DPG_MODE(i32 %139, i32 0, i32 %140, i32 %141, i32 -1, i32 0)
  %143 = load i32, i32* @UVD, align 4
  %144 = load i32, i32* @mmUVD_UDEC_ADDR_CONFIG, align 4
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %146 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @WREG32_SOC15_DPG_MODE(i32 %143, i32 0, i32 %144, i32 %149, i32 -1, i32 0)
  %151 = load i32, i32* @UVD, align 4
  %152 = load i32, i32* @mmUVD_UDEC_DB_ADDR_CONFIG, align 4
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %154 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @WREG32_SOC15_DPG_MODE(i32 %151, i32 0, i32 %152, i32 %157, i32 -1, i32 0)
  %159 = load i32, i32* @UVD, align 4
  %160 = load i32, i32* @mmUVD_UDEC_DBW_ADDR_CONFIG, align 4
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %162 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @WREG32_SOC15_DPG_MODE(i32 %159, i32 0, i32 %160, i32 %165, i32 -1, i32 0)
  %167 = load i32, i32* @UVD, align 4
  %168 = load i32, i32* @mmUVD_UDEC_DBW_UV_ADDR_CONFIG, align 4
  %169 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %170 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @WREG32_SOC15_DPG_MODE(i32 %167, i32 0, i32 %168, i32 %173, i32 -1, i32 0)
  %175 = load i32, i32* @UVD, align 4
  %176 = load i32, i32* @mmUVD_MIF_CURR_ADDR_CONFIG, align 4
  %177 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %178 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @WREG32_SOC15_DPG_MODE(i32 %175, i32 0, i32 %176, i32 %181, i32 -1, i32 0)
  %183 = load i32, i32* @UVD, align 4
  %184 = load i32, i32* @mmUVD_MIF_CURR_UV_ADDR_CONFIG, align 4
  %185 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %186 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @WREG32_SOC15_DPG_MODE(i32 %183, i32 0, i32 %184, i32 %189, i32 -1, i32 0)
  %191 = load i32, i32* @UVD, align 4
  %192 = load i32, i32* @mmUVD_MIF_RECON1_ADDR_CONFIG, align 4
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %194 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @WREG32_SOC15_DPG_MODE(i32 %191, i32 0, i32 %192, i32 %197, i32 -1, i32 0)
  %199 = load i32, i32* @UVD, align 4
  %200 = load i32, i32* @mmUVD_MIF_RECON1_UV_ADDR_CONFIG, align 4
  %201 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %202 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @WREG32_SOC15_DPG_MODE(i32 %199, i32 0, i32 %200, i32 %205, i32 -1, i32 0)
  %207 = load i32, i32* @UVD, align 4
  %208 = load i32, i32* @mmUVD_MIF_REF_ADDR_CONFIG, align 4
  %209 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %210 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @WREG32_SOC15_DPG_MODE(i32 %207, i32 0, i32 %208, i32 %213, i32 -1, i32 0)
  %215 = load i32, i32* @UVD, align 4
  %216 = load i32, i32* @mmUVD_MIF_REF_UV_ADDR_CONFIG, align 4
  %217 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %218 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @WREG32_SOC15_DPG_MODE(i32 %215, i32 0, i32 %216, i32 %221, i32 -1, i32 0)
  ret void
}

declare dso_local i32 @AMDGPU_GPU_PAGE_ALIGN(i64) #1

declare dso_local i32 @WREG32_SOC15_DPG_MODE(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
