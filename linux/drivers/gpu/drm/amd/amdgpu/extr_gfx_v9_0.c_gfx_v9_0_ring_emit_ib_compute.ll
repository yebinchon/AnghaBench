; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_ring_emit_ib_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_ring_emit_ib_compute.c"
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
@PACKET3_INDIRECT_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, %struct.amdgpu_job*, %struct.amdgpu_ib*, i32)* @gfx_v9_0_ring_emit_ib_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_ring_emit_ib_compute(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1, %struct.amdgpu_ib* %2, i32 %3) #0 {
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
  br i1 %26, label %27, label %43

27:                                               ; preds = %4
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %29 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %30 = call i32 @PACKET3(i32 %29, i32 1)
  %31 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %28, i32 %30)
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %33 = load i32, i32* @mmGDS_COMPUTE_MAX_WAVE_ID, align 4
  %34 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %32, i32 %33)
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %37 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %35, i32 %41)
  br label %43

43:                                               ; preds = %27, %4
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %45 = load i32, i32* @PACKET3_INDIRECT_BUFFER, align 4
  %46 = call i32 @PACKET3(i32 %45, i32 2)
  %47 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %44, i32 %46)
  %48 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %49 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 3
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %54 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lower_32_bits(i32 %56)
  %58 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %53, i32 %57)
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %60 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @upper_32_bits(i32 %62)
  %64 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %59, i32 %63)
  %65 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %65, i32 %66)
  ret void
}

declare dso_local i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job*) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
