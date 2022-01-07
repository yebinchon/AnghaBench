; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r200.c_r200_copy_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r200.c_r200_copy_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_fence = type { i32 }
%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }
%struct.dma_resv = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@RADEON_GPU_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"radeon: moving bo (%d).\0A\00", align 1
@RADEON_WAIT_UNTIL = common dso_local global i32 0, align 4
@RADEON_WAIT_DMA_GUI_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_fence* @r200_copy_dma(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, %struct.dma_resv* %4) #0 {
  %6 = alloca %struct.radeon_fence*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_resv*, align 8
  %12 = alloca %struct.radeon_ring*, align 8
  %13 = alloca %struct.radeon_fence*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dma_resv* %4, %struct.dma_resv** %11, align 8
  %19 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 0
  %21 = load %struct.radeon_ring*, %struct.radeon_ring** %20, align 8
  %22 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %23 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %21, i64 %22
  store %struct.radeon_ring* %23, %struct.radeon_ring** %12, align 8
  store i32 0, i32* %18, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @RADEON_GPU_PAGE_SHIFT, align 4
  %26 = shl i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @DIV_ROUND_UP(i32 %27, i32 2097151)
  store i32 %28, i32* %17, align 4
  %29 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %31 = load i32, i32* %17, align 4
  %32 = mul nsw i32 %31, 4
  %33 = add nsw i32 %32, 64
  %34 = call i32 @radeon_ring_lock(%struct.radeon_device* %29, %struct.radeon_ring* %30, i32 %33)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %5
  %38 = load i32, i32* %18, align 4
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %18, align 4
  %41 = call %struct.radeon_fence* @ERR_PTR(i32 %40)
  store %struct.radeon_fence* %41, %struct.radeon_fence** %6, align 8
  br label %109

42:                                               ; preds = %5
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %44 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %45 = call i32 @PACKET0(i32 %44, i32 0)
  %46 = call i32 @radeon_ring_write(%struct.radeon_ring* %43, i32 %45)
  %47 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %48 = call i32 @radeon_ring_write(%struct.radeon_ring* %47, i32 65536)
  store i32 0, i32* %16, align 4
  br label %49

49:                                               ; preds = %82, %42
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %49
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp sgt i32 %55, 2097151
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 2097151, i32* %15, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %14, align 4
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %63 = call i32 @PACKET0(i32 1824, i32 2)
  %64 = call i32 @radeon_ring_write(%struct.radeon_ring* %62, i32 %63)
  %65 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @radeon_ring_write(%struct.radeon_ring* %65, i32 %66)
  %68 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @radeon_ring_write(%struct.radeon_ring* %68, i32 %69)
  %71 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %72 = load i32, i32* %15, align 4
  %73 = or i32 %72, -2147483648
  %74 = or i32 %73, 1073741824
  %75 = call i32 @radeon_ring_write(%struct.radeon_ring* %71, i32 %74)
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %58
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  br label %49

85:                                               ; preds = %49
  %86 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %87 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %88 = call i32 @PACKET0(i32 %87, i32 0)
  %89 = call i32 @radeon_ring_write(%struct.radeon_ring* %86, i32 %88)
  %90 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %91 = load i32, i32* @RADEON_WAIT_DMA_GUI_IDLE, align 4
  %92 = call i32 @radeon_ring_write(%struct.radeon_ring* %90, i32 %91)
  %93 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %94 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %95 = call i32 @radeon_fence_emit(%struct.radeon_device* %93, %struct.radeon_fence** %13, i64 %94)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %85
  %99 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %100 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %101 = call i32 @radeon_ring_unlock_undo(%struct.radeon_device* %99, %struct.radeon_ring* %100)
  %102 = load i32, i32* %18, align 4
  %103 = call %struct.radeon_fence* @ERR_PTR(i32 %102)
  store %struct.radeon_fence* %103, %struct.radeon_fence** %6, align 8
  br label %109

104:                                              ; preds = %85
  %105 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %106 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %107 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %105, %struct.radeon_ring* %106, i32 0)
  %108 = load %struct.radeon_fence*, %struct.radeon_fence** %13, align 8
  store %struct.radeon_fence* %108, %struct.radeon_fence** %6, align 8
  br label %109

109:                                              ; preds = %104, %98, %37
  %110 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  ret %struct.radeon_fence* %110
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local %struct.radeon_fence* @ERR_PTR(i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @radeon_fence_emit(%struct.radeon_device*, %struct.radeon_fence**, i64) #1

declare dso_local i32 @radeon_ring_unlock_undo(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
