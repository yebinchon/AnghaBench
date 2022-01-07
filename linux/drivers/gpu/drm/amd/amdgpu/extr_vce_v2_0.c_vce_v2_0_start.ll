; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v2_0.c_vce_v2_0_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v2_0.c_vce_v2_0_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32 }

@mmVCE_STATUS = common dso_local global i32 0, align 4
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
@VCE_VCPU_CNTL = common dso_local global i32 0, align 4
@CLK_EN = common dso_local global i32 0, align 4
@VCE_SOFT_RESET = common dso_local global i32 0, align 4
@ECPU_SOFT_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"VCE not responding, giving up!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vce_v2_0_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v2_0_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load i32, i32* @mmVCE_STATUS, align 4
  %7 = call i32 @WREG32_P(i32 %6, i32 1, i32 -2)
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = call i32 @vce_v2_0_init_cg(%struct.amdgpu_device* %8)
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = call i32 @vce_v2_0_disable_cg(%struct.amdgpu_device* %10)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = call i32 @vce_v2_0_mc_resume(%struct.amdgpu_device* %12)
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %16, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i64 0
  store %struct.amdgpu_ring* %18, %struct.amdgpu_ring** %4, align 8
  %19 = load i32, i32* @mmVCE_RB_RPTR, align 4
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @lower_32_bits(i32 %22)
  %24 = call i32 @WREG32(i32 %19, i32 %23)
  %25 = load i32, i32* @mmVCE_RB_WPTR, align 4
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lower_32_bits(i32 %28)
  %30 = call i32 @WREG32(i32 %25, i32 %29)
  %31 = load i32, i32* @mmVCE_RB_BASE_LO, align 4
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @WREG32(i32 %31, i32 %34)
  %36 = load i32, i32* @mmVCE_RB_BASE_HI, align 4
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @upper_32_bits(i32 %39)
  %41 = call i32 @WREG32(i32 %36, i32 %40)
  %42 = load i32, i32* @mmVCE_RB_SIZE, align 4
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 4
  %47 = call i32 @WREG32(i32 %42, i32 %46)
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %50, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %51, i64 1
  store %struct.amdgpu_ring* %52, %struct.amdgpu_ring** %4, align 8
  %53 = load i32, i32* @mmVCE_RB_RPTR2, align 4
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lower_32_bits(i32 %56)
  %58 = call i32 @WREG32(i32 %53, i32 %57)
  %59 = load i32, i32* @mmVCE_RB_WPTR2, align 4
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @lower_32_bits(i32 %62)
  %64 = call i32 @WREG32(i32 %59, i32 %63)
  %65 = load i32, i32* @mmVCE_RB_BASE_LO2, align 4
  %66 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %67 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @WREG32(i32 %65, i32 %68)
  %70 = load i32, i32* @mmVCE_RB_BASE_HI2, align 4
  %71 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %72 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @upper_32_bits(i32 %73)
  %75 = call i32 @WREG32(i32 %70, i32 %74)
  %76 = load i32, i32* @mmVCE_RB_SIZE2, align 4
  %77 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %78 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 4
  %81 = call i32 @WREG32(i32 %76, i32 %80)
  %82 = load i32, i32* @VCE_VCPU_CNTL, align 4
  %83 = load i32, i32* @CLK_EN, align 4
  %84 = call i32 @WREG32_FIELD(i32 %82, i32 %83, i32 1)
  %85 = load i32, i32* @VCE_SOFT_RESET, align 4
  %86 = load i32, i32* @ECPU_SOFT_RESET, align 4
  %87 = call i32 @WREG32_FIELD(i32 %85, i32 %86, i32 1)
  %88 = call i32 @mdelay(i32 100)
  %89 = load i32, i32* @VCE_SOFT_RESET, align 4
  %90 = load i32, i32* @ECPU_SOFT_RESET, align 4
  %91 = call i32 @WREG32_FIELD(i32 %89, i32 %90, i32 0)
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %93 = call i32 @vce_v2_0_firmware_loaded(%struct.amdgpu_device* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @mmVCE_STATUS, align 4
  %95 = call i32 @WREG32_P(i32 %94, i32 0, i32 -2)
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %1
  %99 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %102

101:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %98
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @vce_v2_0_init_cg(%struct.amdgpu_device*) #1

declare dso_local i32 @vce_v2_0_disable_cg(%struct.amdgpu_device*) #1

declare dso_local i32 @vce_v2_0_mc_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @vce_v2_0_firmware_loaded(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
