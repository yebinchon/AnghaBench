; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_ring_emit_hdp_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_ring_emit_hdp_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AMDGPU_RING_TYPE_COMPUTE = common dso_local global i64 0, align 8
@GPU_HDP_FLUSH_DONE__CP2_MASK = common dso_local global i32 0, align 4
@GPU_HDP_FLUSH_DONE__CP6_MASK = common dso_local global i32 0, align 4
@GPU_HDP_FLUSH_DONE__CP0_MASK = common dso_local global i32 0, align 4
@PACKET3_WAIT_REG_MEM = common dso_local global i32 0, align 4
@mmGPU_HDP_FLUSH_REQ = common dso_local global i32 0, align 4
@mmGPU_HDP_FLUSH_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @gfx_v7_0_ring_emit_hdp_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_ring_emit_hdp_flush(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %5 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AMDGPU_RING_TYPE_COMPUTE, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 0, i32 1
  store i32 %13, i32* %4, align 4
  %14 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AMDGPU_RING_TYPE_COMPUTE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %37 [
    i32 1, label %25
    i32 2, label %31
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @GPU_HDP_FLUSH_DONE__CP2_MASK, align 4
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %26, %29
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %21
  %32 = load i32, i32* @GPU_HDP_FLUSH_DONE__CP6_MASK, align 4
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %32, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %21
  br label %68

38:                                               ; preds = %31, %25
  br label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @GPU_HDP_FLUSH_DONE__CP0_MASK, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %43 = load i32, i32* @PACKET3_WAIT_REG_MEM, align 4
  %44 = call i32 @PACKET3(i32 %43, i32 5)
  %45 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %42, i32 %44)
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %47 = call i32 @WAIT_REG_MEM_OPERATION(i32 1)
  %48 = call i32 @WAIT_REG_MEM_FUNCTION(i32 3)
  %49 = or i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @WAIT_REG_MEM_ENGINE(i32 %50)
  %52 = or i32 %49, %51
  %53 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %46, i32 %52)
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %55 = load i32, i32* @mmGPU_HDP_FLUSH_REQ, align 4
  %56 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %54, i32 %55)
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %58 = load i32, i32* @mmGPU_HDP_FLUSH_DONE, align 4
  %59 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %57, i32 %58)
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %60, i32 %61)
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %63, i32 %64)
  %66 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %67 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %66, i32 32)
  br label %68

68:                                               ; preds = %41, %37
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WAIT_REG_MEM_OPERATION(i32) #1

declare dso_local i32 @WAIT_REG_MEM_FUNCTION(i32) #1

declare dso_local i32 @WAIT_REG_MEM_ENGINE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
