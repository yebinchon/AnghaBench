; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_emit_hdp_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_emit_hdp_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AMDGPU_RING_TYPE_COMPUTE = common dso_local global i64 0, align 8
@AMDGPU_RING_TYPE_KIQ = common dso_local global i64 0, align 8
@GPU_HDP_FLUSH_DONE__CP2_MASK = common dso_local global i32 0, align 4
@GPU_HDP_FLUSH_DONE__CP6_MASK = common dso_local global i32 0, align 4
@GPU_HDP_FLUSH_DONE__CP0_MASK = common dso_local global i32 0, align 4
@PACKET3_WAIT_REG_MEM = common dso_local global i32 0, align 4
@mmGPU_HDP_FLUSH_REQ = common dso_local global i32 0, align 4
@mmGPU_HDP_FLUSH_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @gfx_v8_0_ring_emit_hdp_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_ring_emit_hdp_flush(%struct.amdgpu_ring* %0) #0 {
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
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AMDGPU_RING_TYPE_KIQ, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %12, %1
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %36 [
    i32 1, label %24
    i32 2, label %30
  ]

24:                                               ; preds = %20
  %25 = load i32, i32* @GPU_HDP_FLUSH_DONE__CP2_MASK, align 4
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %25, %28
  store i32 %29, i32* %3, align 4
  br label %37

30:                                               ; preds = %20
  %31 = load i32, i32* @GPU_HDP_FLUSH_DONE__CP6_MASK, align 4
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %31, %34
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %20
  br label %67

37:                                               ; preds = %30, %24
  store i32 0, i32* %4, align 4
  br label %41

38:                                               ; preds = %12
  %39 = load i32, i32* @GPU_HDP_FLUSH_DONE__CP0_MASK, align 4
  store i32 %39, i32* %3, align 4
  %40 = call i32 @WAIT_REG_MEM_ENGINE(i32 1)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %43 = load i32, i32* @PACKET3_WAIT_REG_MEM, align 4
  %44 = call i32 @PACKET3(i32 %43, i32 5)
  %45 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %42, i32 %44)
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %47 = call i32 @WAIT_REG_MEM_OPERATION(i32 1)
  %48 = call i32 @WAIT_REG_MEM_FUNCTION(i32 3)
  %49 = or i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %46, i32 %51)
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %54 = load i32, i32* @mmGPU_HDP_FLUSH_REQ, align 4
  %55 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %53, i32 %54)
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %57 = load i32, i32* @mmGPU_HDP_FLUSH_DONE, align 4
  %58 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %56, i32 %57)
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %59, i32 %60)
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %62, i32 %63)
  %65 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %66 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %65, i32 32)
  br label %67

67:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @WAIT_REG_MEM_ENGINE(i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WAIT_REG_MEM_OPERATION(i32) #1

declare dso_local i32 @WAIT_REG_MEM_FUNCTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
