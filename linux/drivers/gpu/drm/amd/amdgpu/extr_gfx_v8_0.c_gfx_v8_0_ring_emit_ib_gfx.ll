; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_emit_ib_gfx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_emit_ib_gfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_job = type { i32 }
%struct.amdgpu_ib = type { i32, i32, i32 }

@AMDGPU_IB_FLAG_CE = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER_CONST = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER = common dso_local global i32 0, align 4
@AMDGPU_IB_FLAG_PREEMPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, %struct.amdgpu_job*, %struct.amdgpu_ib*, i32)* @gfx_v8_0_ring_emit_ib_gfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_ring_emit_ib_gfx(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1, %struct.amdgpu_ib* %2, i32 %3) #0 {
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
  %14 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AMDGPU_IB_FLAG_CE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @PACKET3_INDIRECT_BUFFER_CONST, align 4
  %22 = call i32 @PACKET3(i32 %21, i32 2)
  store i32 %22, i32* %10, align 4
  br label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @PACKET3_INDIRECT_BUFFER, align 4
  %25 = call i32 @PACKET3(i32 %24, i32 2)
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 %30, 24
  %32 = or i32 %29, %31
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %36 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @amdgpu_sriov_vf(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %26
  %41 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AMDGPU_IB_FLAG_PREEMPT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = call i32 @INDIRECT_BUFFER_PRE_ENB(i32 1)
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AMDGPU_IB_FLAG_CE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %59 = call i32 @gfx_v8_0_ring_emit_de_meta(%struct.amdgpu_ring* %58)
  br label %60

60:                                               ; preds = %57, %47
  br label %61

61:                                               ; preds = %60, %40, %26
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %62, i32 %63)
  %65 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %66 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %67 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, -4
  %70 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %65, i32 %69)
  %71 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %72 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %73 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @upper_32_bits(i32 %74)
  %76 = and i32 %75, 65535
  %77 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %71, i32 %76)
  %78 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %78, i32 %79)
  ret void
}

declare dso_local i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job*) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i64 @amdgpu_sriov_vf(i32) #1

declare dso_local i32 @INDIRECT_BUFFER_PRE_ENB(i32) #1

declare dso_local i32 @gfx_v8_0_ring_emit_de_meta(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
