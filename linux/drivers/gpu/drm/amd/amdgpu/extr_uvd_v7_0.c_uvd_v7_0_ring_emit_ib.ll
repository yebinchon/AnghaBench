; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_ring_emit_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_ring_emit_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_job = type { i32 }
%struct.amdgpu_ib = type { i32, i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_IB_VMID = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_IB_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_RBC_IB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, %struct.amdgpu_job*, %struct.amdgpu_ib*, i32)* @uvd_v7_0_ring_emit_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvd_v7_0_ring_emit_ib(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1, %struct.amdgpu_ib* %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_job*, align 8
  %7 = alloca %struct.amdgpu_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store %struct.amdgpu_job* %1, %struct.amdgpu_job** %6, align 8
  store %struct.amdgpu_ib* %2, %struct.amdgpu_ib** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %11, i32 0, i32 1
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %9, align 8
  %14 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %15 = call i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %17 = load i32, i32* @UVD, align 4
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @mmUVD_LMI_RBC_IB_VMID, align 4
  %22 = call i32 @SOC15_REG_OFFSET(i32 %17, i32 %20, i32 %21)
  %23 = call i32 @PACKET0(i32 %22, i32 0)
  %24 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %16, i32 %23)
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %25, i32 %26)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %29 = load i32, i32* @UVD, align 4
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @mmUVD_LMI_RBC_IB_64BIT_BAR_LOW, align 4
  %34 = call i32 @SOC15_REG_OFFSET(i32 %29, i32 %32, i32 %33)
  %35 = call i32 @PACKET0(i32 %34, i32 0)
  %36 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %28, i32 %35)
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %38 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @lower_32_bits(i32 %40)
  %42 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %37, i32 %41)
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %44 = load i32, i32* @UVD, align 4
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH, align 4
  %49 = call i32 @SOC15_REG_OFFSET(i32 %44, i32 %47, i32 %48)
  %50 = call i32 @PACKET0(i32 %49, i32 0)
  %51 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %43, i32 %50)
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %53 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @upper_32_bits(i32 %55)
  %57 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 %56)
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %59 = load i32, i32* @UVD, align 4
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @mmUVD_RBC_IB_SIZE, align 4
  %64 = call i32 @SOC15_REG_OFFSET(i32 %59, i32 %62, i32 %63)
  %65 = call i32 @PACKET0(i32 %64, i32 0)
  %66 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %58, i32 %65)
  %67 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %68 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %69 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %67, i32 %70)
  ret void
}

declare dso_local i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job*) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
