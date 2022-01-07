; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_emit_ib_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_emit_ib_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_job = type { i32 }
%struct.amdgpu_ib = type { i32, i32, i32 }

@INDIRECT_BUFFER_VALID = common dso_local global i32 0, align 4
@AMDGPU_IB_FLAG_RESET_GDS_MAX_WAVE_ID = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@mmGDS_COMPUTE_MAX_WAVE_ID = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, %struct.amdgpu_job*, %struct.amdgpu_ib*, i32)* @gfx_v8_0_ring_emit_ib_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_ring_emit_ib_compute(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1, %struct.amdgpu_ib* %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_job*, align 8
  %7 = alloca %struct.amdgpu_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store %struct.amdgpu_job* %1, %struct.amdgpu_job** %6, align 8
  store %struct.amdgpu_ib* %2, %struct.amdgpu_ib** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %12 = call i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @INDIRECT_BUFFER_VALID, align 4
  %14 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %13, %16
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 %18, 24
  %20 = or i32 %17, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AMDGPU_IB_FLAG_RESET_GDS_MAX_WAVE_ID, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %4
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %29 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %30 = call i32 @PACKET3(i32 %29, i32 1)
  %31 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %28, i32 %30)
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %33 = load i32, i32* @mmGDS_COMPUTE_MAX_WAVE_ID, align 4
  %34 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %32, i32 %35)
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %37, i32 %43)
  br label %45

45:                                               ; preds = %27, %4
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %47 = load i32, i32* @PACKET3_INDIRECT_BUFFER, align 4
  %48 = call i32 @PACKET3(i32 %47, i32 2)
  %49 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %46, i32 %48)
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %51 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, -4
  %55 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %50, i32 %54)
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %57 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @upper_32_bits(i32 %59)
  %61 = and i32 %60, 65535
  %62 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %56, i32 %61)
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %63, i32 %64)
  ret void
}

declare dso_local i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job*) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
