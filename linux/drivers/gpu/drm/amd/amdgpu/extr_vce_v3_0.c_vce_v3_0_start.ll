; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32 }

@mmGRBM_GFX_INDEX = common dso_local global i32 0, align 4
@AMDGPU_VCE_HARVEST_VCE0 = common dso_local global i32 0, align 4
@mmVCE_RB_RPTR = common dso_local global i32 0, align 4
@mmVCE_RB_WPTR = common dso_local global i32 0, align 4
@mmVCE_RB_BASE_LO = common dso_local global i32 0, align 4
@mmVCE_RB_BASE_HI = common dso_local global i32 0, align 4
@mmVCE_RB_SIZE = common dso_local global i32 0, align 4
@mmVCE_RB_RPTR2 = common dso_local global i32 0, align 4
@mmVCE_RB_WPTR2 = common dso_local global i32 0, align 4
@mmVCE_RB_BASE_LO2 = common dso_local global i32 0, align 4
@mmVCE_RB_BASE_HI2 = common dso_local global i32 0, align 4
@mmVCE_RB_SIZE2 = common dso_local global i32 0, align 4
@mmVCE_RB_RPTR3 = common dso_local global i32 0, align 4
@mmVCE_RB_WPTR3 = common dso_local global i32 0, align 4
@mmVCE_RB_BASE_LO3 = common dso_local global i32 0, align 4
@mmVCE_RB_BASE_HI3 = common dso_local global i32 0, align 4
@mmVCE_RB_SIZE3 = common dso_local global i32 0, align 4
@VCE_STATUS = common dso_local global i32 0, align 4
@JOB_BUSY = common dso_local global i32 0, align 4
@CHIP_STONEY = common dso_local global i64 0, align 8
@mmVCE_VCPU_CNTL = common dso_local global i32 0, align 4
@VCE_VCPU_CNTL = common dso_local global i32 0, align 4
@CLK_EN = common dso_local global i32 0, align 4
@VCE_SOFT_RESET = common dso_local global i32 0, align 4
@ECPU_SOFT_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"VCE not responding, giving up!!!\0A\00", align 1
@mmGRBM_GFX_INDEX_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vce_v3_0_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v3_0_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %178, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %181

13:                                               ; preds = %10
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %178

23:                                               ; preds = %13
  %24 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @GET_VCE_INSTANCE(i32 %25)
  %27 = call i32 @WREG32(i32 %24, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AMDGPU_VCE_HARVEST_VCE0, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %140

37:                                               ; preds = %30, %23
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %40, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %41, i64 0
  store %struct.amdgpu_ring* %42, %struct.amdgpu_ring** %4, align 8
  %43 = load i32, i32* @mmVCE_RB_RPTR, align 4
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %45 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @lower_32_bits(i32 %46)
  %48 = call i32 @WREG32(i32 %43, i32 %47)
  %49 = load i32, i32* @mmVCE_RB_WPTR, align 4
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @lower_32_bits(i32 %52)
  %54 = call i32 @WREG32(i32 %49, i32 %53)
  %55 = load i32, i32* @mmVCE_RB_BASE_LO, align 4
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %57 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @WREG32(i32 %55, i32 %58)
  %60 = load i32, i32* @mmVCE_RB_BASE_HI, align 4
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %62 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @upper_32_bits(i32 %63)
  %65 = call i32 @WREG32(i32 %60, i32 %64)
  %66 = load i32, i32* @mmVCE_RB_SIZE, align 4
  %67 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %68 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %69, 4
  %71 = call i32 @WREG32(i32 %66, i32 %70)
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %74, align 8
  %76 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %75, i64 1
  store %struct.amdgpu_ring* %76, %struct.amdgpu_ring** %4, align 8
  %77 = load i32, i32* @mmVCE_RB_RPTR2, align 4
  %78 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %79 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @lower_32_bits(i32 %80)
  %82 = call i32 @WREG32(i32 %77, i32 %81)
  %83 = load i32, i32* @mmVCE_RB_WPTR2, align 4
  %84 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %85 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @lower_32_bits(i32 %86)
  %88 = call i32 @WREG32(i32 %83, i32 %87)
  %89 = load i32, i32* @mmVCE_RB_BASE_LO2, align 4
  %90 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %91 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @WREG32(i32 %89, i32 %92)
  %94 = load i32, i32* @mmVCE_RB_BASE_HI2, align 4
  %95 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %96 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @upper_32_bits(i32 %97)
  %99 = call i32 @WREG32(i32 %94, i32 %98)
  %100 = load i32, i32* @mmVCE_RB_SIZE2, align 4
  %101 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %102 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %103, 4
  %105 = call i32 @WREG32(i32 %100, i32 %104)
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %108, align 8
  %110 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %109, i64 2
  store %struct.amdgpu_ring* %110, %struct.amdgpu_ring** %4, align 8
  %111 = load i32, i32* @mmVCE_RB_RPTR3, align 4
  %112 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %113 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @lower_32_bits(i32 %114)
  %116 = call i32 @WREG32(i32 %111, i32 %115)
  %117 = load i32, i32* @mmVCE_RB_WPTR3, align 4
  %118 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %119 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @lower_32_bits(i32 %120)
  %122 = call i32 @WREG32(i32 %117, i32 %121)
  %123 = load i32, i32* @mmVCE_RB_BASE_LO3, align 4
  %124 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %125 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @WREG32(i32 %123, i32 %126)
  %128 = load i32, i32* @mmVCE_RB_BASE_HI3, align 4
  %129 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %130 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @upper_32_bits(i32 %131)
  %133 = call i32 @WREG32(i32 %128, i32 %132)
  %134 = load i32, i32* @mmVCE_RB_SIZE3, align 4
  %135 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %136 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %137, 4
  %139 = call i32 @WREG32(i32 %134, i32 %138)
  br label %140

140:                                              ; preds = %37, %30
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @vce_v3_0_mc_resume(%struct.amdgpu_device* %141, i32 %142)
  %144 = load i32, i32* @VCE_STATUS, align 4
  %145 = load i32, i32* @JOB_BUSY, align 4
  %146 = call i32 @WREG32_FIELD(i32 %144, i32 %145, i32 1)
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @CHIP_STONEY, align 8
  %151 = icmp sge i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load i32, i32* @mmVCE_VCPU_CNTL, align 4
  %154 = call i32 @WREG32_P(i32 %153, i32 1, i32 -2097154)
  br label %159

155:                                              ; preds = %140
  %156 = load i32, i32* @VCE_VCPU_CNTL, align 4
  %157 = load i32, i32* @CLK_EN, align 4
  %158 = call i32 @WREG32_FIELD(i32 %156, i32 %157, i32 1)
  br label %159

159:                                              ; preds = %155, %152
  %160 = load i32, i32* @VCE_SOFT_RESET, align 4
  %161 = load i32, i32* @ECPU_SOFT_RESET, align 4
  %162 = call i32 @WREG32_FIELD(i32 %160, i32 %161, i32 0)
  %163 = call i32 @mdelay(i32 100)
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %165 = call i32 @vce_v3_0_firmware_loaded(%struct.amdgpu_device* %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* @VCE_STATUS, align 4
  %167 = load i32, i32* @JOB_BUSY, align 4
  %168 = call i32 @WREG32_FIELD(i32 %166, i32 %167, i32 0)
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %159
  %172 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %174 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %173, i32 0, i32 1
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %2, align 4
  br label %188

177:                                              ; preds = %159
  br label %178

178:                                              ; preds = %177, %22
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %5, align 4
  br label %10

181:                                              ; preds = %10
  %182 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %183 = load i32, i32* @mmGRBM_GFX_INDEX_DEFAULT, align 4
  %184 = call i32 @WREG32(i32 %182, i32 %183)
  %185 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %186 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %185, i32 0, i32 1
  %187 = call i32 @mutex_unlock(i32* %186)
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %181, %171
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @GET_VCE_INSTANCE(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @vce_v3_0_mc_resume(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @vce_v3_0_firmware_loaded(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
