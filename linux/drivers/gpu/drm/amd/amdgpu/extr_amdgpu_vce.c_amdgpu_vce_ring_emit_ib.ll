; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_ring_emit_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_ring_emit_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_job = type { i32 }
%struct.amdgpu_ib = type { i32, i32 }

@VCE_CMD_IB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_vce_ring_emit_ib(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1, %struct.amdgpu_ib* %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_job*, align 8
  %7 = alloca %struct.amdgpu_ib*, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store %struct.amdgpu_job* %1, %struct.amdgpu_job** %6, align 8
  store %struct.amdgpu_ib* %2, %struct.amdgpu_ib** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %10 = load i32, i32* @VCE_CMD_IB, align 4
  %11 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %9, i32 %10)
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %13 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @lower_32_bits(i32 %15)
  %17 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %12, i32 %16)
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %19 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @upper_32_bits(i32 %21)
  %23 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %18, i32 %22)
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %25 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %26 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %24, i32 %27)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
