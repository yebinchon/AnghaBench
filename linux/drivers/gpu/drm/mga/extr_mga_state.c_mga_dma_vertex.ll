; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_vertex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma*, i32* }
%struct.drm_device_dma = type { i64, %struct.drm_buf** }
%struct.drm_buf = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.drm_file = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @mga_dma_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mga_dma_vertex(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.drm_device_dma*, align 8
  %10 = alloca %struct.drm_buf*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.drm_device_dma*, %struct.drm_device_dma** %17, align 8
  store %struct.drm_device_dma* %18, %struct.drm_device_dma** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %12, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %21, %struct.drm_file* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.drm_device_dma*, %struct.drm_device_dma** %9, align 8
  %33 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ugt i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28, %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %92

39:                                               ; preds = %28
  %40 = load %struct.drm_device_dma*, %struct.drm_device_dma** %9, align 8
  %41 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %40, i32 0, i32 1
  %42 = load %struct.drm_buf**, %struct.drm_buf*** %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %42, i64 %45
  %47 = load %struct.drm_buf*, %struct.drm_buf** %46, align 8
  store %struct.drm_buf* %47, %struct.drm_buf** %10, align 8
  %48 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %49 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %11, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %55 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @mga_verify_state(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %39
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %76 = call i32 @AGE_BUFFER(%struct.TYPE_5__* %75)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %81 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %82 = call i32 @mga_freelist_put(%struct.drm_device* %80, %struct.drm_buf* %81)
  br label %83

83:                                               ; preds = %77, %64
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %92

86:                                               ; preds = %39
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @WRAP_TEST_WITH_RETURN(i32* %87)
  %89 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %90 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %91 = call i32 @mga_dma_dispatch_vertex(%struct.drm_device* %89, %struct.drm_buf* %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %86, %83, %36
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @mga_verify_state(i32*) #1

declare dso_local i32 @AGE_BUFFER(%struct.TYPE_5__*) #1

declare dso_local i32 @mga_freelist_put(%struct.drm_device*, %struct.drm_buf*) #1

declare dso_local i32 @WRAP_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @mga_dma_dispatch_vertex(%struct.drm_device*, %struct.drm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
