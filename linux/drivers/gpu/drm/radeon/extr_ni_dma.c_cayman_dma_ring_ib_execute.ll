; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dma.c_cayman_dma_ring_ib_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dma.c_cayman_dma_ring_ib_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__, %struct.radeon_ring* }
%struct.TYPE_6__ = type { i64 }
%struct.radeon_ring = type { i32, i32 }
%struct.radeon_ib = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DMA_PACKET_WRITE = common dso_local global i32 0, align 4
@DMA_PACKET_NOP = common dso_local global i32 0, align 4
@DMA_PACKET_INDIRECT_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_dma_ring_ib_execute(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 1
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %11 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i64 %13
  store %struct.radeon_ring* %14, %struct.radeon_ring** %5, align 8
  %15 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %21 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %26 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %19
  %33 = phi i32 [ %30, %19 ], [ 0, %31 ]
  store i32 %33, i32* %6, align 4
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %32
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %41 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %48, %39
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 7
  %47 = icmp ne i32 %46, 5
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %44

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 3
  store i32 %53, i32* %7, align 4
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %55 = load i32, i32* @DMA_PACKET_WRITE, align 4
  %56 = call i32 @DMA_PACKET(i32 %55, i32 0, i32 0, i32 1)
  %57 = call i32 @radeon_ring_write(%struct.radeon_ring* %54, i32 %56)
  %58 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %60 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, -4
  %63 = call i32 @radeon_ring_write(%struct.radeon_ring* %58, i32 %62)
  %64 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %65 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %66 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @upper_32_bits(i32 %67)
  %69 = and i32 %68, 255
  %70 = call i32 @radeon_ring_write(%struct.radeon_ring* %64, i32 %69)
  %71 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @radeon_ring_write(%struct.radeon_ring* %71, i32 %72)
  br label %74

74:                                               ; preds = %51, %32
  br label %75

75:                                               ; preds = %81, %74
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %77 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 7
  %80 = icmp ne i32 %79, 5
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %83 = load i32, i32* @DMA_PACKET_NOP, align 4
  %84 = call i32 @DMA_PACKET(i32 %83, i32 0, i32 0, i32 0)
  %85 = call i32 @radeon_ring_write(%struct.radeon_ring* %82, i32 %84)
  br label %75

86:                                               ; preds = %75
  %87 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %88 = load i32, i32* @DMA_PACKET_INDIRECT_BUFFER, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @DMA_IB_PACKET(i32 %88, i32 %89, i32 0)
  %91 = call i32 @radeon_ring_write(%struct.radeon_ring* %87, i32 %90)
  %92 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %93 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %94 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, -32
  %97 = call i32 @radeon_ring_write(%struct.radeon_ring* %92, i32 %96)
  %98 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %99 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %100 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 12
  %103 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %104 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @upper_32_bits(i32 %105)
  %107 = and i32 %106, 255
  %108 = or i32 %102, %107
  %109 = call i32 @radeon_ring_write(%struct.radeon_ring* %98, i32 %108)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @DMA_IB_PACKET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
