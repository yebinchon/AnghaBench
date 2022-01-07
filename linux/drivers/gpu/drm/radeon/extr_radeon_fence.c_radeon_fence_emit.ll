; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64* }
%struct.radeon_fence = type { i32, i32, i64, i32, %struct.radeon_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@radeon_fence_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_fence_emit(%struct.radeon_device* %0, %struct.radeon_fence** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_fence**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_fence** %1, %struct.radeon_fence*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.radeon_fence* @kmalloc(i32 32, i32 %9)
  %11 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  store %struct.radeon_fence* %10, %struct.radeon_fence** %11, align 8
  %12 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %13 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  %14 = icmp eq %struct.radeon_fence* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %77

18:                                               ; preds = %3
  %19 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %20 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %21 = load %struct.radeon_fence*, %struct.radeon_fence** %20, align 8
  %22 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %21, i32 0, i32 4
  store %struct.radeon_device* %19, %struct.radeon_device** %22, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  store i64 %35, i64* %8, align 8
  %36 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %37 = load %struct.radeon_fence*, %struct.radeon_fence** %36, align 8
  %38 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %37, i32 0, i32 2
  store i64 %35, i64* %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %41 = load %struct.radeon_fence*, %struct.radeon_fence** %40, align 8
  %42 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %44 = load %struct.radeon_fence*, %struct.radeon_fence** %43, align 8
  %45 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %47 = load %struct.radeon_fence*, %struct.radeon_fence** %46, align 8
  %48 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %47, i32 0, i32 3
  %49 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @dma_fence_init(i32* %48, i32* @radeon_fence_ops, i32* %51, i64 %57, i64 %58)
  %60 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %63 = load %struct.radeon_fence*, %struct.radeon_fence** %62, align 8
  %64 = call i32 @radeon_fence_ring_emit(%struct.radeon_device* %60, i32 %61, %struct.radeon_fence* %63)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %70 = load %struct.radeon_fence*, %struct.radeon_fence** %69, align 8
  %71 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @trace_radeon_fence_emit(i32 %67, i32 %68, i64 %72)
  %74 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @radeon_fence_schedule_check(%struct.radeon_device* %74, i32 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %18, %15
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.radeon_fence* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_fence_init(i32*, i32*, i32*, i64, i64) #1

declare dso_local i32 @radeon_fence_ring_emit(%struct.radeon_device*, i32, %struct.radeon_fence*) #1

declare dso_local i32 @trace_radeon_fence_emit(i32, i32, i64) #1

declare dso_local i32 @radeon_fence_schedule_check(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
