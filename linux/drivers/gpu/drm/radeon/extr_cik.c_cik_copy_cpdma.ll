; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_copy_cpdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_copy_cpdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_fence = type { i32 }
%struct.radeon_device = type { %struct.radeon_ring*, %struct.TYPE_4__* }
%struct.radeon_ring = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dma_resv = type { i32 }
%struct.radeon_sync = type { i32 }

@RADEON_GPU_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"radeon: moving bo (%d).\0A\00", align 1
@PACKET3_DMA_DATA_CP_SYNC = common dso_local global i32 0, align 4
@PACKET3_DMA_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_fence* @cik_copy_cpdma(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, %struct.dma_resv* %4) #0 {
  %6 = alloca %struct.radeon_fence*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_resv*, align 8
  %12 = alloca %struct.radeon_fence*, align 8
  %13 = alloca %struct.radeon_sync, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.radeon_ring*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dma_resv* %4, %struct.dma_resv** %11, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 0
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %30, i64 %32
  store %struct.radeon_ring* %33, %struct.radeon_ring** %15, align 8
  store i32 0, i32* %21, align 4
  %34 = call i32 @radeon_sync_create(%struct.radeon_sync* %13)
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @RADEON_GPU_PAGE_SHIFT, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @DIV_ROUND_UP(i32 %38, i32 2097151)
  store i32 %39, i32* %20, align 4
  %40 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %42 = load i32, i32* %20, align 4
  %43 = mul nsw i32 %42, 7
  %44 = add nsw i32 %43, 18
  %45 = call i32 @radeon_ring_lock(%struct.radeon_device* %40, %struct.radeon_ring* %41, i32 %44)
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* %21, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %5
  %49 = load i32, i32* %21, align 4
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %52 = call i32 @radeon_sync_free(%struct.radeon_device* %51, %struct.radeon_sync* %13, %struct.radeon_fence* null)
  %53 = load i32, i32* %21, align 4
  %54 = call %struct.radeon_fence* @ERR_PTR(i32 %53)
  store %struct.radeon_fence* %54, %struct.radeon_fence** %6, align 8
  br label %143

55:                                               ; preds = %5
  %56 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %57 = load %struct.dma_resv*, %struct.dma_resv** %11, align 8
  %58 = call i32 @radeon_sync_resv(%struct.radeon_device* %56, %struct.radeon_sync* %13, %struct.dma_resv* %57, i32 0)
  %59 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %60 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %61 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @radeon_sync_rings(%struct.radeon_device* %59, %struct.radeon_sync* %13, i32 %62)
  store i32 0, i32* %19, align 4
  br label %64

64:                                               ; preds = %116, %55
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %20, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %119

68:                                               ; preds = %64
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp sgt i32 %70, 2097151
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 2097151, i32* %17, align 4
  br label %73

73:                                               ; preds = %72, %68
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %16, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* @PACKET3_DMA_DATA_CP_SYNC, align 4
  %81 = load i32, i32* %18, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %85 = load i32, i32* @PACKET3_DMA_DATA, align 4
  %86 = call i32 @PACKET3(i32 %85, i32 5)
  %87 = call i32 @radeon_ring_write(%struct.radeon_ring* %84, i32 %86)
  %88 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @radeon_ring_write(%struct.radeon_ring* %88, i32 %89)
  %91 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @lower_32_bits(i32 %92)
  %94 = call i32 @radeon_ring_write(%struct.radeon_ring* %91, i32 %93)
  %95 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @upper_32_bits(i32 %96)
  %98 = call i32 @radeon_ring_write(%struct.radeon_ring* %95, i32 %97)
  %99 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @lower_32_bits(i32 %100)
  %102 = call i32 @radeon_ring_write(%struct.radeon_ring* %99, i32 %101)
  %103 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @upper_32_bits(i32 %104)
  %106 = call i32 @radeon_ring_write(%struct.radeon_ring* %103, i32 %105)
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @radeon_ring_write(%struct.radeon_ring* %107, i32 %108)
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %83
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %19, align 4
  br label %64

119:                                              ; preds = %64
  %120 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %121 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %122 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @radeon_fence_emit(%struct.radeon_device* %120, %struct.radeon_fence** %12, i32 %123)
  store i32 %124, i32* %21, align 4
  %125 = load i32, i32* %21, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %119
  %128 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %129 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %130 = call i32 @radeon_ring_unlock_undo(%struct.radeon_device* %128, %struct.radeon_ring* %129)
  %131 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %132 = call i32 @radeon_sync_free(%struct.radeon_device* %131, %struct.radeon_sync* %13, %struct.radeon_fence* null)
  %133 = load i32, i32* %21, align 4
  %134 = call %struct.radeon_fence* @ERR_PTR(i32 %133)
  store %struct.radeon_fence* %134, %struct.radeon_fence** %6, align 8
  br label %143

135:                                              ; preds = %119
  %136 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %137 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %138 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %136, %struct.radeon_ring* %137, i32 0)
  %139 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %140 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  %141 = call i32 @radeon_sync_free(%struct.radeon_device* %139, %struct.radeon_sync* %13, %struct.radeon_fence* %140)
  %142 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  store %struct.radeon_fence* %142, %struct.radeon_fence** %6, align 8
  br label %143

143:                                              ; preds = %135, %127, %48
  %144 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  ret %struct.radeon_fence* %144
}

declare dso_local i32 @radeon_sync_create(%struct.radeon_sync*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @radeon_sync_free(%struct.radeon_device*, %struct.radeon_sync*, %struct.radeon_fence*) #1

declare dso_local %struct.radeon_fence* @ERR_PTR(i32) #1

declare dso_local i32 @radeon_sync_resv(%struct.radeon_device*, %struct.radeon_sync*, %struct.dma_resv*, i32) #1

declare dso_local i32 @radeon_sync_rings(%struct.radeon_device*, %struct.radeon_sync*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @radeon_fence_emit(%struct.radeon_device*, %struct.radeon_fence**, i32) #1

declare dso_local i32 @radeon_ring_unlock_undo(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
