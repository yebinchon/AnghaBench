; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx10_kiq_unmap_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx10_kiq_unmap_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AMDGPU_RING_TYPE_GFX = common dso_local global i64 0, align 8
@PACKET3_UNMAP_QUEUES = common dso_local global i32 0, align 4
@PREEMPT_QUEUES_NO_UNMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, %struct.amdgpu_ring*, i32, i32, i32)* @gfx10_kiq_unmap_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx10_kiq_unmap_queues(%struct.amdgpu_ring* %0, %struct.amdgpu_ring* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_ring*, align 8
  %7 = alloca %struct.amdgpu_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %6, align 8
  store %struct.amdgpu_ring* %1, %struct.amdgpu_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AMDGPU_RING_TYPE_GFX, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 4, i32 0
  store i32 %20, i32* %11, align 4
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %22 = load i32, i32* @PACKET3_UNMAP_QUEUES, align 4
  %23 = call i32 @PACKET3(i32 %22, i32 4)
  %24 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %21, i32 %23)
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @PACKET3_UNMAP_QUEUES_ACTION(i32 %26)
  %28 = call i32 @PACKET3_UNMAP_QUEUES_QUEUE_SEL(i32 0)
  %29 = or i32 %27, %28
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @PACKET3_UNMAP_QUEUES_ENGINE_SEL(i32 %30)
  %32 = or i32 %29, %31
  %33 = call i32 @PACKET3_UNMAP_QUEUES_NUM_QUEUES(i32 1)
  %34 = or i32 %32, %33
  %35 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %25, i32 %34)
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PACKET3_UNMAP_QUEUES_DOORBELL_OFFSET0(i32 %39)
  %41 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %36, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PREEMPT_QUEUES_NO_UNMAP, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %5
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @lower_32_bits(i32 %47)
  %49 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %46, i32 %48)
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @upper_32_bits(i32 %51)
  %53 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %50, i32 %52)
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %54, i32 %55)
  br label %64

57:                                               ; preds = %5
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %59 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %58, i32 0)
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %61 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %60, i32 0)
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %63 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %62, i32 0)
  br label %64

64:                                               ; preds = %57, %45
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_UNMAP_QUEUES_ACTION(i32) #1

declare dso_local i32 @PACKET3_UNMAP_QUEUES_QUEUE_SEL(i32) #1

declare dso_local i32 @PACKET3_UNMAP_QUEUES_ENGINE_SEL(i32) #1

declare dso_local i32 @PACKET3_UNMAP_QUEUES_NUM_QUEUES(i32) #1

declare dso_local i32 @PACKET3_UNMAP_QUEUES_DOORBELL_OFFSET0(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
