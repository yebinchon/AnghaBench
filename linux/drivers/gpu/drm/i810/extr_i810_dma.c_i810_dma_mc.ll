; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_mc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64, %struct.drm_device_dma* }
%struct.drm_device_dma = type { i64, i32* }
%struct.drm_file = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i64* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @i810_dma_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810_dma_mc(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device_dma*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load %struct.drm_device_dma*, %struct.drm_device_dma** %14, align 8
  store %struct.drm_device_dma* %15, %struct.drm_device_dma** %8, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %10, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %11, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %12, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %31 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %29, %struct.drm_file* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %36 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp uge i64 %34, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %3
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %76

47:                                               ; preds = %39
  %48 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %49 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %50 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @i810_dma_dispatch_mc(%struct.drm_device* %48, i32 %56, i32 %59, i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i64*, i64** %10, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 5
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %47, %44
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @i810_dma_dispatch_mc(%struct.drm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
