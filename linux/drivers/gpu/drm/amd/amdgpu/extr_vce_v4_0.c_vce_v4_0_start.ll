; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v4_0.c_vce_v4_0_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v4_0.c_vce_v4_0_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32 }

@VCE = common dso_local global i32 0, align 4
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
@mmVCE_STATUS = common dso_local global i32 0, align 4
@VCE_STATUS__JOB_BUSY_MASK = common dso_local global i32 0, align 4
@mmVCE_VCPU_CNTL = common dso_local global i32 0, align 4
@mmVCE_SOFT_RESET = common dso_local global i32 0, align 4
@VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"VCE not responding, giving up!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vce_v4_0_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v4_0_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i64 0
  store %struct.amdgpu_ring* %10, %struct.amdgpu_ring** %4, align 8
  %11 = load i32, i32* @VCE, align 4
  %12 = load i32, i32* @mmVCE_RB_RPTR, align 4
  %13 = call i32 @SOC15_REG_OFFSET(i32 %11, i32 0, i32 %12)
  %14 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @lower_32_bits(i32 %16)
  %18 = call i32 @WREG32(i32 %13, i32 %17)
  %19 = load i32, i32* @VCE, align 4
  %20 = load i32, i32* @mmVCE_RB_WPTR, align 4
  %21 = call i32 @SOC15_REG_OFFSET(i32 %19, i32 0, i32 %20)
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @lower_32_bits(i32 %24)
  %26 = call i32 @WREG32(i32 %21, i32 %25)
  %27 = load i32, i32* @VCE, align 4
  %28 = load i32, i32* @mmVCE_RB_BASE_LO, align 4
  %29 = call i32 @SOC15_REG_OFFSET(i32 %27, i32 0, i32 %28)
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @WREG32(i32 %29, i32 %32)
  %34 = load i32, i32* @VCE, align 4
  %35 = load i32, i32* @mmVCE_RB_BASE_HI, align 4
  %36 = call i32 @SOC15_REG_OFFSET(i32 %34, i32 0, i32 %35)
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @upper_32_bits(i32 %39)
  %41 = call i32 @WREG32(i32 %36, i32 %40)
  %42 = load i32, i32* @VCE, align 4
  %43 = load i32, i32* @mmVCE_RB_SIZE, align 4
  %44 = call i32 @SOC15_REG_OFFSET(i32 %42, i32 0, i32 %43)
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 4
  %49 = call i32 @WREG32(i32 %44, i32 %48)
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %52, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %53, i64 1
  store %struct.amdgpu_ring* %54, %struct.amdgpu_ring** %4, align 8
  %55 = load i32, i32* @VCE, align 4
  %56 = load i32, i32* @mmVCE_RB_RPTR2, align 4
  %57 = call i32 @SOC15_REG_OFFSET(i32 %55, i32 0, i32 %56)
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %59 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @lower_32_bits(i32 %60)
  %62 = call i32 @WREG32(i32 %57, i32 %61)
  %63 = load i32, i32* @VCE, align 4
  %64 = load i32, i32* @mmVCE_RB_WPTR2, align 4
  %65 = call i32 @SOC15_REG_OFFSET(i32 %63, i32 0, i32 %64)
  %66 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %67 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @lower_32_bits(i32 %68)
  %70 = call i32 @WREG32(i32 %65, i32 %69)
  %71 = load i32, i32* @VCE, align 4
  %72 = load i32, i32* @mmVCE_RB_BASE_LO2, align 4
  %73 = call i32 @SOC15_REG_OFFSET(i32 %71, i32 0, i32 %72)
  %74 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %75 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @WREG32(i32 %73, i32 %76)
  %78 = load i32, i32* @VCE, align 4
  %79 = load i32, i32* @mmVCE_RB_BASE_HI2, align 4
  %80 = call i32 @SOC15_REG_OFFSET(i32 %78, i32 0, i32 %79)
  %81 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %82 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @upper_32_bits(i32 %83)
  %85 = call i32 @WREG32(i32 %80, i32 %84)
  %86 = load i32, i32* @VCE, align 4
  %87 = load i32, i32* @mmVCE_RB_SIZE2, align 4
  %88 = call i32 @SOC15_REG_OFFSET(i32 %86, i32 0, i32 %87)
  %89 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %90 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %91, 4
  %93 = call i32 @WREG32(i32 %88, i32 %92)
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %96, align 8
  %98 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %97, i64 2
  store %struct.amdgpu_ring* %98, %struct.amdgpu_ring** %4, align 8
  %99 = load i32, i32* @VCE, align 4
  %100 = load i32, i32* @mmVCE_RB_RPTR3, align 4
  %101 = call i32 @SOC15_REG_OFFSET(i32 %99, i32 0, i32 %100)
  %102 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %103 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @lower_32_bits(i32 %104)
  %106 = call i32 @WREG32(i32 %101, i32 %105)
  %107 = load i32, i32* @VCE, align 4
  %108 = load i32, i32* @mmVCE_RB_WPTR3, align 4
  %109 = call i32 @SOC15_REG_OFFSET(i32 %107, i32 0, i32 %108)
  %110 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %111 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @lower_32_bits(i32 %112)
  %114 = call i32 @WREG32(i32 %109, i32 %113)
  %115 = load i32, i32* @VCE, align 4
  %116 = load i32, i32* @mmVCE_RB_BASE_LO3, align 4
  %117 = call i32 @SOC15_REG_OFFSET(i32 %115, i32 0, i32 %116)
  %118 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %119 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @WREG32(i32 %117, i32 %120)
  %122 = load i32, i32* @VCE, align 4
  %123 = load i32, i32* @mmVCE_RB_BASE_HI3, align 4
  %124 = call i32 @SOC15_REG_OFFSET(i32 %122, i32 0, i32 %123)
  %125 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %126 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @upper_32_bits(i32 %127)
  %129 = call i32 @WREG32(i32 %124, i32 %128)
  %130 = load i32, i32* @VCE, align 4
  %131 = load i32, i32* @mmVCE_RB_SIZE3, align 4
  %132 = call i32 @SOC15_REG_OFFSET(i32 %130, i32 0, i32 %131)
  %133 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %134 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sdiv i32 %135, 4
  %137 = call i32 @WREG32(i32 %132, i32 %136)
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %139 = call i32 @vce_v4_0_mc_resume(%struct.amdgpu_device* %138)
  %140 = load i32, i32* @VCE, align 4
  %141 = load i32, i32* @mmVCE_STATUS, align 4
  %142 = call i32 @SOC15_REG_OFFSET(i32 %140, i32 0, i32 %141)
  %143 = load i32, i32* @VCE_STATUS__JOB_BUSY_MASK, align 4
  %144 = load i32, i32* @VCE_STATUS__JOB_BUSY_MASK, align 4
  %145 = xor i32 %144, -1
  %146 = call i32 @WREG32_P(i32 %142, i32 %143, i32 %145)
  %147 = load i32, i32* @VCE, align 4
  %148 = load i32, i32* @mmVCE_VCPU_CNTL, align 4
  %149 = call i32 @SOC15_REG_OFFSET(i32 %147, i32 0, i32 %148)
  %150 = call i32 @WREG32_P(i32 %149, i32 1, i32 -2097154)
  %151 = load i32, i32* @VCE, align 4
  %152 = load i32, i32* @mmVCE_SOFT_RESET, align 4
  %153 = call i32 @SOC15_REG_OFFSET(i32 %151, i32 0, i32 %152)
  %154 = load i32, i32* @VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK, align 4
  %155 = xor i32 %154, -1
  %156 = call i32 @WREG32_P(i32 %153, i32 0, i32 %155)
  %157 = call i32 @mdelay(i32 100)
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %159 = call i32 @vce_v4_0_firmware_loaded(%struct.amdgpu_device* %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* @VCE, align 4
  %161 = load i32, i32* @mmVCE_STATUS, align 4
  %162 = call i32 @SOC15_REG_OFFSET(i32 %160, i32 0, i32 %161)
  %163 = load i32, i32* @VCE_STATUS__JOB_BUSY_MASK, align 4
  %164 = xor i32 %163, -1
  %165 = call i32 @WREG32_P(i32 %162, i32 0, i32 %164)
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %1
  %169 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %170 = load i32, i32* %5, align 4
  store i32 %170, i32* %2, align 4
  br label %172

171:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %168
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @vce_v4_0_mc_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @vce_v4_0_firmware_loaded(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
