; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_ring_emit_pipeline_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_ring_emit_pipeline_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@mmUVD_GPCOM_VCPU_DATA0 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_DATA1 = common dso_local global i32 0, align 4
@mmUVD_GP_SCRATCH8 = common dso_local global i32 0, align 4
@mmUVD_GP_SCRATCH9 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @uvd_v6_0_ring_emit_pipeline_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvd_v6_0_ring_emit_pipeline_sync(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %5 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %14 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA0, align 4
  %15 = call i32 @PACKET0(i32 %14, i32 0)
  %16 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %13, i32 %15)
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @lower_32_bits(i32 %18)
  %20 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %17, i32 %19)
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %22 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA1, align 4
  %23 = call i32 @PACKET0(i32 %22, i32 0)
  %24 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %21, i32 %23)
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @upper_32_bits(i32 %26)
  %28 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %25, i32 %27)
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %30 = load i32, i32* @mmUVD_GP_SCRATCH8, align 4
  %31 = call i32 @PACKET0(i32 %30, i32 0)
  %32 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %29, i32 %31)
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %34 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %33, i32 -1)
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %36 = load i32, i32* @mmUVD_GP_SCRATCH9, align 4
  %37 = call i32 @PACKET0(i32 %36, i32 0)
  %38 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %35, i32 %37)
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %39, i32 %40)
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %43 = load i32, i32* @mmUVD_GPCOM_VCPU_CMD, align 4
  %44 = call i32 @PACKET0(i32 %43, i32 0)
  %45 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %42, i32 %44)
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %47 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %46, i32 14)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
