; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_driver_start_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_driver_start_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i64, %struct.TYPE_12__, i32, %struct.TYPE_7__*, %struct.amdgpu_device* }
%struct.TYPE_12__ = type { i32, i32, i32, i32*, %struct.amdgpu_irq_src*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.amdgpu_device = type { i32, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.amdgpu_irq_src = type { i32 }

@AMDGPU_RING_TYPE_UVD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"fence driver on ring %s use gpu addr 0x%016llx, cpu addr 0x%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_fence_driver_start_ring(%struct.amdgpu_ring* %0, %struct.amdgpu_irq_src* %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca %struct.amdgpu_irq_src*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 5
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %7, align 8
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i32 0, i32 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AMDGPU_RING_TYPE_UVD, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  store i32* %27, i32** %30, align 8
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %37 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = mul i64 %38, 4
  %40 = add i64 %35, %39
  %41 = trunc i64 %40 to i32
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %43 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  br label %84

45:                                               ; preds = %3
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ALIGN(i32 %51, i32 8)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %67 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  store i32* %65, i32** %68, align 8
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %78, %79
  %81 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %82 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %45, %19
  %85 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %86 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %87 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 5
  %89 = call i32 @atomic_read(i32* %88)
  %90 = call i32 @amdgpu_fence_write(%struct.amdgpu_ring* %85, i32 %89)
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %92 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @amdgpu_irq_get(%struct.amdgpu_device* %91, %struct.amdgpu_irq_src* %92, i32 %93)
  %95 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %5, align 8
  %96 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %97 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 4
  store %struct.amdgpu_irq_src* %95, %struct.amdgpu_irq_src** %98, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %101 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %104 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %110 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %113 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %117 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @DRM_DEV_DEBUG(i32 %108, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %115, i32* %119)
  ret i32 0
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @amdgpu_fence_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @amdgpu_irq_get(%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG(i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
