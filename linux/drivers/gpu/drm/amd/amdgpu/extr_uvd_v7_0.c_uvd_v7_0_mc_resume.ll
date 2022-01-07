; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_mc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_mc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@UVD = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@AMDGPU_UCODE_ID_UVD = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_UVD1 = common dso_local global i64 0, align 8
@mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET0 = common dso_local global i32 0, align 4
@AMDGPU_UVD_FIRMWARE_OFFSET = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE0 = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET1 = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE1 = common dso_local global i32 0, align 4
@AMDGPU_UVD_HEAP_SIZE = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET2 = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE2 = common dso_local global i32 0, align 4
@AMDGPU_UVD_STACK_SIZE = common dso_local global i32 0, align 4
@AMDGPU_UVD_SESSION_SIZE = common dso_local global i32 0, align 4
@mmUVD_UDEC_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_UDEC_DB_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_UDEC_DBW_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_GP_SCRATCH4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @uvd_v7_0_mc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvd_v7_0_mc_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = call i32 @AMDGPU_UVD_FIRMWARE_SIZE(%struct.amdgpu_device* %6)
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %255, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %258

15:                                               ; preds = %8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %255

25:                                               ; preds = %15
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %89

32:                                               ; preds = %25
  %33 = load i32, i32* @UVD, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i64, i64* @AMDGPU_UCODE_ID_UVD, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  br label %56

47:                                               ; preds = %32
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i64, i64* @AMDGPU_UCODE_ID_UVD1, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  br label %56

56:                                               ; preds = %47, %38
  %57 = phi i32 [ %46, %38 ], [ %55, %47 ]
  %58 = call i32 @WREG32_SOC15(i32 %33, i32 %34, i32 %35, i32 %57)
  %59 = load i32, i32* @UVD, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i64, i64* @AMDGPU_UCODE_ID_UVD, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  br label %82

73:                                               ; preds = %56
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i64, i64* @AMDGPU_UCODE_ID_UVD1, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  br label %82

82:                                               ; preds = %73, %64
  %83 = phi i32 [ %72, %64 ], [ %81, %73 ]
  %84 = call i32 @WREG32_SOC15(i32 %59, i32 %60, i32 %61, i32 %83)
  %85 = load i32, i32* @UVD, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET0, align 4
  %88 = call i32 @WREG32_SOC15(i32 %85, i32 %86, i32 %87, i32 0)
  store i32 0, i32* %4, align 4
  br label %125

89:                                               ; preds = %25
  %90 = load i32, i32* @UVD, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW, align 4
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @lower_32_bits(i32 %101)
  %103 = call i32 @WREG32_SOC15(i32 %90, i32 %91, i32 %92, i32 %102)
  %104 = load i32, i32* @UVD, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH, align 4
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @upper_32_bits(i32 %115)
  %117 = call i32 @WREG32_SOC15(i32 %104, i32 %105, i32 %106, i32 %116)
  %118 = load i32, i32* %3, align 4
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* @UVD, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET0, align 4
  %122 = load i32, i32* @AMDGPU_UVD_FIRMWARE_OFFSET, align 4
  %123 = ashr i32 %122, 3
  %124 = call i32 @WREG32_SOC15(i32 %119, i32 %120, i32 %121, i32 %123)
  br label %125

125:                                              ; preds = %89, %82
  %126 = load i32, i32* @UVD, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE0, align 4
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @WREG32_SOC15(i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* @UVD, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_LOW, align 4
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %135 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %142, %143
  %145 = call i32 @lower_32_bits(i32 %144)
  %146 = call i32 @WREG32_SOC15(i32 %131, i32 %132, i32 %133, i32 %145)
  %147 = load i32, i32* @UVD, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_HIGH, align 4
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %151 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %158, %159
  %161 = call i32 @upper_32_bits(i32 %160)
  %162 = call i32 @WREG32_SOC15(i32 %147, i32 %148, i32 %149, i32 %161)
  %163 = load i32, i32* @UVD, align 4
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET1, align 4
  %166 = call i32 @WREG32_SOC15(i32 %163, i32 %164, i32 %165, i32 2097152)
  %167 = load i32, i32* @UVD, align 4
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE1, align 4
  %170 = load i32, i32* @AMDGPU_UVD_HEAP_SIZE, align 4
  %171 = call i32 @WREG32_SOC15(i32 %167, i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* @UVD, align 4
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* @mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_LOW, align 4
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %176 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %183, %184
  %186 = load i32, i32* @AMDGPU_UVD_HEAP_SIZE, align 4
  %187 = add nsw i32 %185, %186
  %188 = call i32 @lower_32_bits(i32 %187)
  %189 = call i32 @WREG32_SOC15(i32 %172, i32 %173, i32 %174, i32 %188)
  %190 = load i32, i32* @UVD, align 4
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* @mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_HIGH, align 4
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %194 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 3
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %4, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32, i32* @AMDGPU_UVD_HEAP_SIZE, align 4
  %205 = add nsw i32 %203, %204
  %206 = call i32 @upper_32_bits(i32 %205)
  %207 = call i32 @WREG32_SOC15(i32 %190, i32 %191, i32 %192, i32 %206)
  %208 = load i32, i32* @UVD, align 4
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET2, align 4
  %211 = call i32 @WREG32_SOC15(i32 %208, i32 %209, i32 %210, i32 4194304)
  %212 = load i32, i32* @UVD, align 4
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE2, align 4
  %215 = load i32, i32* @AMDGPU_UVD_STACK_SIZE, align 4
  %216 = load i32, i32* @AMDGPU_UVD_SESSION_SIZE, align 4
  %217 = mul nsw i32 %216, 40
  %218 = add nsw i32 %215, %217
  %219 = call i32 @WREG32_SOC15(i32 %212, i32 %213, i32 %214, i32 %218)
  %220 = load i32, i32* @UVD, align 4
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* @mmUVD_UDEC_ADDR_CONFIG, align 4
  %223 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %224 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @WREG32_SOC15(i32 %220, i32 %221, i32 %222, i32 %227)
  %229 = load i32, i32* @UVD, align 4
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* @mmUVD_UDEC_DB_ADDR_CONFIG, align 4
  %232 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %233 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @WREG32_SOC15(i32 %229, i32 %230, i32 %231, i32 %236)
  %238 = load i32, i32* @UVD, align 4
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* @mmUVD_UDEC_DBW_ADDR_CONFIG, align 4
  %241 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %242 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @WREG32_SOC15(i32 %238, i32 %239, i32 %240, i32 %245)
  %247 = load i32, i32* @UVD, align 4
  %248 = load i32, i32* %5, align 4
  %249 = load i32, i32* @mmUVD_GP_SCRATCH4, align 4
  %250 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %251 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @WREG32_SOC15(i32 %247, i32 %248, i32 %249, i32 %253)
  br label %255

255:                                              ; preds = %125, %24
  %256 = load i32, i32* %5, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %5, align 4
  br label %8

258:                                              ; preds = %8
  ret void
}

declare dso_local i32 @AMDGPU_UVD_FIRMWARE_SIZE(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
