; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_copy_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_copy_dma.c"
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
@SDMA_OPCODE_COPY = common dso_local global i32 0, align 4
@SDMA_COPY_SUB_OPCODE_LINEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_fence* @cik_copy_dma(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, %struct.dma_resv* %4) #0 {
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
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dma_resv* %4, %struct.dma_resv** %11, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %28, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %29, i64 %31
  store %struct.radeon_ring* %32, %struct.radeon_ring** %15, align 8
  store i32 0, i32* %20, align 4
  %33 = call i32 @radeon_sync_create(%struct.radeon_sync* %13)
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @RADEON_GPU_PAGE_SHIFT, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @DIV_ROUND_UP(i32 %37, i32 2097151)
  store i32 %38, i32* %19, align 4
  %39 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %41 = load i32, i32* %19, align 4
  %42 = mul nsw i32 %41, 7
  %43 = add nsw i32 %42, 14
  %44 = call i32 @radeon_ring_lock(%struct.radeon_device* %39, %struct.radeon_ring* %40, i32 %43)
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %5
  %48 = load i32, i32* %20, align 4
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %51 = call i32 @radeon_sync_free(%struct.radeon_device* %50, %struct.radeon_sync* %13, %struct.radeon_fence* null)
  %52 = load i32, i32* %20, align 4
  %53 = call %struct.radeon_fence* @ERR_PTR(i32 %52)
  store %struct.radeon_fence* %53, %struct.radeon_fence** %6, align 8
  br label %135

54:                                               ; preds = %5
  %55 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %56 = load %struct.dma_resv*, %struct.dma_resv** %11, align 8
  %57 = call i32 @radeon_sync_resv(%struct.radeon_device* %55, %struct.radeon_sync* %13, %struct.dma_resv* %56, i32 0)
  %58 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %60 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @radeon_sync_rings(%struct.radeon_device* %58, %struct.radeon_sync* %13, i32 %61)
  store i32 0, i32* %18, align 4
  br label %63

63:                                               ; preds = %108, %54
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %63
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp sgt i32 %69, 2097151
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 2097151, i32* %17, align 4
  br label %72

72:                                               ; preds = %71, %67
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %16, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %16, align 4
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %77 = load i32, i32* @SDMA_OPCODE_COPY, align 4
  %78 = load i32, i32* @SDMA_COPY_SUB_OPCODE_LINEAR, align 4
  %79 = call i32 @SDMA_PACKET(i32 %77, i32 %78, i32 0)
  %80 = call i32 @radeon_ring_write(%struct.radeon_ring* %76, i32 %79)
  %81 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @radeon_ring_write(%struct.radeon_ring* %81, i32 %82)
  %84 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %85 = call i32 @radeon_ring_write(%struct.radeon_ring* %84, i32 0)
  %86 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @lower_32_bits(i32 %87)
  %89 = call i32 @radeon_ring_write(%struct.radeon_ring* %86, i32 %88)
  %90 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @upper_32_bits(i32 %91)
  %93 = call i32 @radeon_ring_write(%struct.radeon_ring* %90, i32 %92)
  %94 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @lower_32_bits(i32 %95)
  %97 = call i32 @radeon_ring_write(%struct.radeon_ring* %94, i32 %96)
  %98 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @upper_32_bits(i32 %99)
  %101 = call i32 @radeon_ring_write(%struct.radeon_ring* %98, i32 %100)
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %72
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %18, align 4
  br label %63

111:                                              ; preds = %63
  %112 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %113 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %114 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @radeon_fence_emit(%struct.radeon_device* %112, %struct.radeon_fence** %12, i32 %115)
  store i32 %116, i32* %20, align 4
  %117 = load i32, i32* %20, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %121 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %122 = call i32 @radeon_ring_unlock_undo(%struct.radeon_device* %120, %struct.radeon_ring* %121)
  %123 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %124 = call i32 @radeon_sync_free(%struct.radeon_device* %123, %struct.radeon_sync* %13, %struct.radeon_fence* null)
  %125 = load i32, i32* %20, align 4
  %126 = call %struct.radeon_fence* @ERR_PTR(i32 %125)
  store %struct.radeon_fence* %126, %struct.radeon_fence** %6, align 8
  br label %135

127:                                              ; preds = %111
  %128 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %129 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %130 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %128, %struct.radeon_ring* %129, i32 0)
  %131 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %132 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  %133 = call i32 @radeon_sync_free(%struct.radeon_device* %131, %struct.radeon_sync* %13, %struct.radeon_fence* %132)
  %134 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  store %struct.radeon_fence* %134, %struct.radeon_fence** %6, align 8
  br label %135

135:                                              ; preds = %127, %119, %47
  %136 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  ret %struct.radeon_fence* %136
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

declare dso_local i32 @SDMA_PACKET(i32, i32, i32) #1

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
