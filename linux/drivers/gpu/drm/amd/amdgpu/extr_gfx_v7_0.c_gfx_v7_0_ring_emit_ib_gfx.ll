; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_ring_emit_ib_gfx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_ring_emit_ib_gfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_job = type { i32 }
%struct.amdgpu_ib = type { i32, i32, i32 }

@AMDGPU_HAVE_CTX_SWITCH = common dso_local global i32 0, align 4
@PACKET3_SWITCH_BUFFER = common dso_local global i32 0, align 4
@AMDGPU_IB_FLAG_CE = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER_CONST = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, %struct.amdgpu_job*, %struct.amdgpu_ib*, i32)* @gfx_v7_0_ring_emit_ib_gfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_ring_emit_ib_gfx(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1, %struct.amdgpu_ib* %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_job*, align 8
  %7 = alloca %struct.amdgpu_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store %struct.amdgpu_job* %1, %struct.amdgpu_job** %6, align 8
  store %struct.amdgpu_ib* %2, %struct.amdgpu_ib** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %13 = call i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job* %12)
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @AMDGPU_HAVE_CTX_SWITCH, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %20 = load i32, i32* @PACKET3_SWITCH_BUFFER, align 4
  %21 = call i32 @PACKET3(i32 %20, i32 0)
  %22 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %19, i32 %21)
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %24 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %23, i32 0)
  br label %25

25:                                               ; preds = %18, %4
  %26 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AMDGPU_IB_FLAG_CE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @PACKET3_INDIRECT_BUFFER_CONST, align 4
  %34 = call i32 @PACKET3(i32 %33, i32 2)
  store i32 %34, i32* %10, align 4
  br label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @PACKET3_INDIRECT_BUFFER, align 4
  %37 = call i32 @PACKET3(i32 %36, i32 2)
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 %42, 24
  %44 = or i32 %41, %43
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %47, i32 %48)
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
  %64 = load i32, i32* %11, align 4
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
