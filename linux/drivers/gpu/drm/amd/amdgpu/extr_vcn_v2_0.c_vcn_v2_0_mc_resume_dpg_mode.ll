; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_mc_resume_dpg_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_mc_resume_dpg_mode.c"
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
@mmUVD_LMI_VCPU_NC0_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_NC0_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_VCPU_NONCACHE_OFFSET0 = common dso_local global i32 0, align 4
@mmUVD_VCPU_NONCACHE_SIZE0 = common dso_local global i32 0, align 4
@mmUVD_GFX10_ADDR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @vcn_v2_0_mc_resume_dpg_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v2_0_mc_resume_dpg_mode(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 4
  %14 = call i32 @AMDGPU_GPU_PAGE_ALIGN(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %73

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @UVD, align 4
  %26 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW, align 4
  %27 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %25, i32 0, i32 %26)
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %27, i32 %35, i32 0, i32 %36)
  %38 = load i32, i32* @UVD, align 4
  %39 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH, align 4
  %40 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %38, i32 0, i32 %39)
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %40, i32 %48, i32 0, i32 %49)
  %51 = load i32, i32* @UVD, align 4
  %52 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET0, align 4
  %53 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %51, i32 0, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %53, i32 0, i32 0, i32 %54)
  br label %72

56:                                               ; preds = %21
  %57 = load i32, i32* @UVD, align 4
  %58 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW, align 4
  %59 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %57, i32 0, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %59, i32 0, i32 0, i32 %60)
  %62 = load i32, i32* @UVD, align 4
  %63 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH, align 4
  %64 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %62, i32 0, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %64, i32 0, i32 0, i32 %65)
  %67 = load i32, i32* @UVD, align 4
  %68 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET0, align 4
  %69 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %67, i32 0, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %69, i32 0, i32 0, i32 %70)
  br label %72

72:                                               ; preds = %56, %24
  store i32 0, i32* %6, align 4
  br label %106

73:                                               ; preds = %2
  %74 = load i32, i32* @UVD, align 4
  %75 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW, align 4
  %76 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %74, i32 0, i32 %75)
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @lower_32_bits(i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %76, i32 %83, i32 0, i32 %84)
  %86 = load i32, i32* @UVD, align 4
  %87 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH, align 4
  %88 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %86, i32 0, i32 %87)
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @upper_32_bits(i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %88, i32 %95, i32 0, i32 %96)
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @UVD, align 4
  %100 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET0, align 4
  %101 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %99, i32 0, i32 %100)
  %102 = load i32, i32* @AMDGPU_UVD_FIRMWARE_OFFSET, align 4
  %103 = ashr i32 %102, 3
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %101, i32 %103, i32 0, i32 %104)
  br label %106

106:                                              ; preds = %73, %72
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @UVD, align 4
  %111 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE0, align 4
  %112 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %110, i32 0, i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %112, i32 %113, i32 0, i32 %114)
  br label %122

116:                                              ; preds = %106
  %117 = load i32, i32* @UVD, align 4
  %118 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE0, align 4
  %119 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %117, i32 0, i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %119, i32 0, i32 0, i32 %120)
  br label %122

122:                                              ; preds = %116, %109
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %159, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* @UVD, align 4
  %127 = load i32, i32* @mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_LOW, align 4
  %128 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %126, i32 0, i32 %127)
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %130 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %134, %135
  %137 = call i32 @lower_32_bits(i32 %136)
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %128, i32 %137, i32 0, i32 %138)
  %140 = load i32, i32* @UVD, align 4
  %141 = load i32, i32* @mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_HIGH, align 4
  %142 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %140, i32 0, i32 %141)
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %144 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %148, %149
  %151 = call i32 @upper_32_bits(i32 %150)
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %142, i32 %151, i32 0, i32 %152)
  %154 = load i32, i32* @UVD, align 4
  %155 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET1, align 4
  %156 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %154, i32 0, i32 %155)
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %156, i32 0, i32 0, i32 %157)
  br label %175

159:                                              ; preds = %122
  %160 = load i32, i32* @UVD, align 4
  %161 = load i32, i32* @mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_LOW, align 4
  %162 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %160, i32 0, i32 %161)
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %162, i32 0, i32 0, i32 %163)
  %165 = load i32, i32* @UVD, align 4
  %166 = load i32, i32* @mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_HIGH, align 4
  %167 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %165, i32 0, i32 %166)
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %167, i32 0, i32 0, i32 %168)
  %170 = load i32, i32* @UVD, align 4
  %171 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET1, align 4
  %172 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %170, i32 0, i32 %171)
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %172, i32 0, i32 0, i32 %173)
  br label %175

175:                                              ; preds = %159, %125
  %176 = load i32, i32* @UVD, align 4
  %177 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE1, align 4
  %178 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %176, i32 0, i32 %177)
  %179 = load i32, i32* @AMDGPU_VCN_STACK_SIZE, align 4
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %178, i32 %179, i32 0, i32 %180)
  %182 = load i32, i32* @UVD, align 4
  %183 = load i32, i32* @mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_LOW, align 4
  %184 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %182, i32 0, i32 %183)
  %185 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %186 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* @AMDGPU_VCN_STACK_SIZE, align 4
  %194 = add nsw i32 %192, %193
  %195 = call i32 @lower_32_bits(i32 %194)
  %196 = load i32, i32* %4, align 4
  %197 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %184, i32 %195, i32 0, i32 %196)
  %198 = load i32, i32* @UVD, align 4
  %199 = load i32, i32* @mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_HIGH, align 4
  %200 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %198, i32 0, i32 %199)
  %201 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %202 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %206, %207
  %209 = load i32, i32* @AMDGPU_VCN_STACK_SIZE, align 4
  %210 = add nsw i32 %208, %209
  %211 = call i32 @upper_32_bits(i32 %210)
  %212 = load i32, i32* %4, align 4
  %213 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %200, i32 %211, i32 0, i32 %212)
  %214 = load i32, i32* @UVD, align 4
  %215 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET2, align 4
  %216 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %214, i32 0, i32 %215)
  %217 = load i32, i32* %4, align 4
  %218 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %216, i32 0, i32 0, i32 %217)
  %219 = load i32, i32* @UVD, align 4
  %220 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE2, align 4
  %221 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %219, i32 0, i32 %220)
  %222 = load i32, i32* @AMDGPU_VCN_CONTEXT_SIZE, align 4
  %223 = load i32, i32* %4, align 4
  %224 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %221, i32 %222, i32 0, i32 %223)
  %225 = load i32, i32* @UVD, align 4
  %226 = load i32, i32* @mmUVD_LMI_VCPU_NC0_64BIT_BAR_LOW, align 4
  %227 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %225, i32 0, i32 %226)
  %228 = load i32, i32* %4, align 4
  %229 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %227, i32 0, i32 0, i32 %228)
  %230 = load i32, i32* @UVD, align 4
  %231 = load i32, i32* @mmUVD_LMI_VCPU_NC0_64BIT_BAR_HIGH, align 4
  %232 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %230, i32 0, i32 %231)
  %233 = load i32, i32* %4, align 4
  %234 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %232, i32 0, i32 0, i32 %233)
  %235 = load i32, i32* @UVD, align 4
  %236 = load i32, i32* @mmUVD_VCPU_NONCACHE_OFFSET0, align 4
  %237 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %235, i32 0, i32 %236)
  %238 = load i32, i32* %4, align 4
  %239 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %237, i32 0, i32 0, i32 %238)
  %240 = load i32, i32* @UVD, align 4
  %241 = load i32, i32* @mmUVD_VCPU_NONCACHE_SIZE0, align 4
  %242 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %240, i32 0, i32 %241)
  %243 = load i32, i32* %4, align 4
  %244 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %242, i32 0, i32 0, i32 %243)
  %245 = load i32, i32* @UVD, align 4
  %246 = load i32, i32* @mmUVD_GFX10_ADDR_CONFIG, align 4
  %247 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %245, i32 0, i32 %246)
  %248 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %249 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %4, align 4
  %254 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %247, i32 %252, i32 0, i32 %253)
  ret void
}

declare dso_local i32 @AMDGPU_GPU_PAGE_ALIGN(i64) #1

declare dso_local i32 @WREG32_SOC15_DPG_MODE_2_0(i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_DPG_MODE_OFFSET_2_0(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
