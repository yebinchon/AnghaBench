; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_ring_emit_wreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_ring_emit_wreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_DATA0 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_DATA1 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32)* @uvd_v7_0_ring_emit_wreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvd_v7_0_ring_emit_wreg(%struct.amdgpu_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %8, i32 0, i32 1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %7, align 8
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %12 = load i32, i32* @UVD, align 4
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA0, align 4
  %17 = call i32 @SOC15_REG_OFFSET(i32 %12, i32 %15, i32 %16)
  %18 = call i32 @PACKET0(i32 %17, i32 0)
  %19 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %11, i32 %18)
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 2
  %23 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %20, i32 %22)
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %25 = load i32, i32* @UVD, align 4
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA1, align 4
  %30 = call i32 @SOC15_REG_OFFSET(i32 %25, i32 %28, i32 %29)
  %31 = call i32 @PACKET0(i32 %30, i32 0)
  %32 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %24, i32 %31)
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %33, i32 %34)
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %37 = load i32, i32* @UVD, align 4
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @mmUVD_GPCOM_VCPU_CMD, align 4
  %42 = call i32 @SOC15_REG_OFFSET(i32 %37, i32 %40, i32 %41)
  %43 = call i32 @PACKET0(i32 %42, i32 0)
  %44 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %36, i32 %43)
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %46 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %45, i32 8)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
