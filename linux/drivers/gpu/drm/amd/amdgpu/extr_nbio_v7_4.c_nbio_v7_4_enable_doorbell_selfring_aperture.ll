; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v7_4.c_nbio_v7_4_enable_doorbell_selfring_aperture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v7_4.c_nbio_v7_4_enable_doorbell_selfring_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DOORBELL_SELFRING_GPA_APER_CNTL = common dso_local global i32 0, align 4
@DOORBELL_SELFRING_GPA_APER_EN = common dso_local global i32 0, align 4
@DOORBELL_SELFRING_GPA_APER_MODE = common dso_local global i32 0, align 4
@DOORBELL_SELFRING_GPA_APER_SIZE = common dso_local global i32 0, align 4
@NBIO = common dso_local global i32 0, align 4
@mmDOORBELL_SELFRING_GPA_APER_BASE_LOW = common dso_local global i32 0, align 4
@mmDOORBELL_SELFRING_GPA_APER_BASE_HIGH = common dso_local global i32 0, align 4
@mmDOORBELL_SELFRING_GPA_APER_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @nbio_v7_4_enable_doorbell_selfring_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbio_v7_4_enable_doorbell_selfring_aperture(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DOORBELL_SELFRING_GPA_APER_CNTL, align 4
  %11 = load i32, i32* @DOORBELL_SELFRING_GPA_APER_EN, align 4
  %12 = call i32 @REG_SET_FIELD(i32 %9, i32 %10, i32 %11, i32 1)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @DOORBELL_SELFRING_GPA_APER_CNTL, align 4
  %15 = load i32, i32* @DOORBELL_SELFRING_GPA_APER_MODE, align 4
  %16 = call i32 @REG_SET_FIELD(i32 %13, i32 %14, i32 %15, i32 1)
  %17 = or i32 %12, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @DOORBELL_SELFRING_GPA_APER_CNTL, align 4
  %20 = load i32, i32* @DOORBELL_SELFRING_GPA_APER_SIZE, align 4
  %21 = call i32 @REG_SET_FIELD(i32 %18, i32 %19, i32 %20, i32 0)
  %22 = or i32 %17, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @NBIO, align 4
  %24 = load i32, i32* @mmDOORBELL_SELFRING_GPA_APER_BASE_LOW, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lower_32_bits(i32 %28)
  %30 = call i32 @WREG32_SOC15(i32 %23, i32 0, i32 %24, i32 %29)
  %31 = load i32, i32* @NBIO, align 4
  %32 = load i32, i32* @mmDOORBELL_SELFRING_GPA_APER_BASE_HIGH, align 4
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @upper_32_bits(i32 %36)
  %38 = call i32 @WREG32_SOC15(i32 %31, i32 0, i32 %32, i32 %37)
  br label %39

39:                                               ; preds = %8, %2
  %40 = load i32, i32* @NBIO, align 4
  %41 = load i32, i32* @mmDOORBELL_SELFRING_GPA_APER_CNTL, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @WREG32_SOC15(i32 %40, i32 0, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
