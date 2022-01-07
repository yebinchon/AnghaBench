; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_ring_emit_ib_gfx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_ring_emit_ib_gfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_job = type { i32 }
%struct.amdgpu_ib = type { i32, i32, i32 }

@AMDGPU_IB_FLAG_CE = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER_CNST = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER = common dso_local global i32 0, align 4
@amdgpu_mcbp = common dso_local global i64 0, align 8
@AMDGPU_IB_FLAG_PREEMPT = common dso_local global i32 0, align 4
@AMDGPU_IB_PREEMPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, %struct.amdgpu_job*, %struct.amdgpu_ib*, i32)* @gfx_v10_0_ring_emit_ib_gfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_ring_emit_ib_gfx(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1, %struct.amdgpu_ib* %2, i32 %3) #0 {
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
  %21 = load i32, i32* @PACKET3_INDIRECT_BUFFER_CNST, align 4
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
  %35 = load i64, i64* @amdgpu_mcbp, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %26
  %38 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AMDGPU_IB_FLAG_PREEMPT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %37
  %45 = call i32 @INDIRECT_BUFFER_PRE_ENB(i32 1)
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @AMDGPU_IB_PREEMPTED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = call i32 @INDIRECT_BUFFER_PRE_RESUME(i32 1)
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %44
  %57 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @AMDGPU_IB_FLAG_CE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %56
  %64 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @AMDGPU_IB_PREEMPTED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  %71 = call i32 @gfx_v10_0_ring_emit_de_meta(%struct.amdgpu_ring* %64, i32 %70)
  br label %72

72:                                               ; preds = %63, %56
  br label %73

73:                                               ; preds = %72, %37, %26
  %74 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %74, i32 %75)
  %77 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %78 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 3
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %83 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @lower_32_bits(i32 %85)
  %87 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %82, i32 %86)
  %88 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %89 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %90 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @upper_32_bits(i32 %91)
  %93 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %88, i32 %92)
  %94 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %94, i32 %95)
  ret void
}

declare dso_local i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job*) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @INDIRECT_BUFFER_PRE_ENB(i32) #1

declare dso_local i32 @INDIRECT_BUFFER_PRE_RESUME(i32) #1

declare dso_local i32 @gfx_v10_0_ring_emit_de_meta(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
