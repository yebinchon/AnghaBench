; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_fence.c_v3d_fence_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_fence.c_v3d_fence_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.v3d_dev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.v3d_fence = type { i32, %struct.dma_fence, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@v3d_fence_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_fence* @v3d_fence_create(%struct.v3d_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.v3d_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v3d_fence*, align 8
  store %struct.v3d_dev* %0, %struct.v3d_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.v3d_fence* @kzalloc(i32 24, i32 %7)
  store %struct.v3d_fence* %8, %struct.v3d_fence** %6, align 8
  %9 = load %struct.v3d_fence*, %struct.v3d_fence** %6, align 8
  %10 = icmp ne %struct.v3d_fence* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.dma_fence* @ERR_PTR(i32 %13)
  store %struct.dma_fence* %14, %struct.dma_fence** %3, align 8
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %17 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %16, i32 0, i32 2
  %18 = load %struct.v3d_fence*, %struct.v3d_fence** %6, align 8
  %19 = getelementptr inbounds %struct.v3d_fence, %struct.v3d_fence* %18, i32 0, i32 3
  store i32* %17, i32** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.v3d_fence*, %struct.v3d_fence** %6, align 8
  %22 = getelementptr inbounds %struct.v3d_fence, %struct.v3d_fence* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %24 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.v3d_fence*, %struct.v3d_fence** %6, align 8
  %33 = getelementptr inbounds %struct.v3d_fence, %struct.v3d_fence* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.v3d_fence*, %struct.v3d_fence** %6, align 8
  %35 = getelementptr inbounds %struct.v3d_fence, %struct.v3d_fence* %34, i32 0, i32 1
  %36 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %37 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %36, i32 0, i32 1
  %38 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %39 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.v3d_fence*, %struct.v3d_fence** %6, align 8
  %47 = getelementptr inbounds %struct.v3d_fence, %struct.v3d_fence* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dma_fence_init(%struct.dma_fence* %35, i32* @v3d_fence_ops, i32* %37, i32 %45, i64 %48)
  %50 = load %struct.v3d_fence*, %struct.v3d_fence** %6, align 8
  %51 = getelementptr inbounds %struct.v3d_fence, %struct.v3d_fence* %50, i32 0, i32 1
  store %struct.dma_fence* %51, %struct.dma_fence** %3, align 8
  br label %52

52:                                               ; preds = %15, %11
  %53 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  ret %struct.dma_fence* %53
}

declare dso_local %struct.v3d_fence* @kzalloc(i32, i32) #1

declare dso_local %struct.dma_fence* @ERR_PTR(i32) #1

declare dso_local i32 @dma_fence_init(%struct.dma_fence*, i32*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
