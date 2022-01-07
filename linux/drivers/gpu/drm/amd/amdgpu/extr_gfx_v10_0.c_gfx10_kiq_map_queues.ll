; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx10_kiq_map_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx10_kiq_map_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.amdgpu_device* }
%struct.TYPE_4__ = type { i64 }
%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@AMDGPU_RING_TYPE_GFX = common dso_local global i64 0, align 8
@PACKET3_MAP_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, %struct.amdgpu_ring*)* @gfx10_kiq_map_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx10_kiq_map_queues(%struct.amdgpu_ring* %0, %struct.amdgpu_ring* %1) #0 {
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  store %struct.amdgpu_ring* %1, %struct.amdgpu_ring** %4, align 8
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 7
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %5, align 8
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @amdgpu_bo_gpu_offset(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %19, %24
  store i64 %25, i64* %7, align 8
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %26, i32 0, i32 5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AMDGPU_RING_TYPE_GFX, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 4, i32 0
  store i32 %34, i32* %8, align 4
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %36 = load i32, i32* @PACKET3_MAP_QUEUES, align 4
  %37 = call i32 @PACKET3(i32 %36, i32 5)
  %38 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %35, i32 %37)
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %40 = call i32 @PACKET3_MAP_QUEUES_QUEUE_SEL(i32 0)
  %41 = call i32 @PACKET3_MAP_QUEUES_VMID(i32 0)
  %42 = or i32 %40, %41
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PACKET3_MAP_QUEUES_QUEUE(i32 %45)
  %47 = or i32 %42, %46
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %49 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PACKET3_MAP_QUEUES_PIPE(i32 %50)
  %52 = or i32 %47, %51
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 0, i32 1
  %59 = call i32 @PACKET3_MAP_QUEUES_ME(i32 %58)
  %60 = or i32 %52, %59
  %61 = call i32 @PACKET3_MAP_QUEUES_QUEUE_TYPE(i32 0)
  %62 = or i32 %60, %61
  %63 = call i32 @PACKET3_MAP_QUEUES_ALLOC_FORMAT(i32 0)
  %64 = or i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @PACKET3_MAP_QUEUES_ENGINE_SEL(i32 %65)
  %67 = or i32 %64, %66
  %68 = call i32 @PACKET3_MAP_QUEUES_NUM_QUEUES(i32 1)
  %69 = or i32 %67, %68
  %70 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %39, i32 %69)
  %71 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %72 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %73 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PACKET3_MAP_QUEUES_DOORBELL_OFFSET(i32 %74)
  %76 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %71, i32 %75)
  %77 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @lower_32_bits(i64 %78)
  %80 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %77, i32 %79)
  %81 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @upper_32_bits(i64 %82)
  %84 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %81, i32 %83)
  %85 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @lower_32_bits(i64 %86)
  %88 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %85, i32 %87)
  %89 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @upper_32_bits(i64 %90)
  %92 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %89, i32 %91)
  ret void
}

declare dso_local i64 @amdgpu_bo_gpu_offset(i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_QUEUE_SEL(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_VMID(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_QUEUE(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_PIPE(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_ME(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_QUEUE_TYPE(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_ALLOC_FORMAT(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_ENGINE_SEL(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_NUM_QUEUES(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_DOORBELL_OFFSET(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
