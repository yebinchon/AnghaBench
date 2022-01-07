; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_dma.c_mga_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_dma.c_mga_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64, %struct.drm_device_dma* }
%struct.drm_device_dma = type { i64 }
%struct.drm_file = type { i32 }
%struct.drm_dma = type { i64, i64, i64 }

@.str = private unnamed_addr constant [49 x i8] c"Process %d trying to send %d buffers via drmDMA\0A\00", align 1
@current = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Process %d trying to get %d buffers (of %d max)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mga_dma_buffers(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device_dma*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.drm_dma*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = load %struct.drm_device_dma*, %struct.drm_device_dma** %13, align 8
  store %struct.drm_device_dma* %14, %struct.drm_device_dma** %8, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.drm_dma*
  store %struct.drm_dma* %20, %struct.drm_dma** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %21, %struct.drm_file* %22)
  %24 = load %struct.drm_dma*, %struct.drm_dma** %10, align 8
  %25 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load i32, i32* @current, align 4
  %30 = call i32 @task_pid_nr(i32 %29)
  %31 = load %struct.drm_dma*, %struct.drm_dma** %10, align 8
  %32 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, i32, i64, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %78

37:                                               ; preds = %3
  %38 = load %struct.drm_dma*, %struct.drm_dma** %10, align 8
  %39 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load %struct.drm_dma*, %struct.drm_dma** %10, align 8
  %44 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %47 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %42, %37
  %51 = load i32, i32* @current, align 4
  %52 = call i32 @task_pid_nr(i32 %51)
  %53 = load %struct.drm_dma*, %struct.drm_dma** %10, align 8
  %54 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %57 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, i32, i64, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %52, i64 %55, i64 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %78

62:                                               ; preds = %42
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @WRAP_TEST_WITH_RETURN(i32* %63)
  %65 = load %struct.drm_dma*, %struct.drm_dma** %10, align 8
  %66 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.drm_dma*, %struct.drm_dma** %10, align 8
  %68 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %73 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %74 = load %struct.drm_dma*, %struct.drm_dma** %10, align 8
  %75 = call i32 @mga_dma_get_buffers(%struct.drm_device* %72, %struct.drm_file* %73, %struct.drm_dma* %74)
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %71, %62
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %50, %28
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i64, ...) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @WRAP_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @mga_dma_get_buffers(%struct.drm_device*, %struct.drm_file*, %struct.drm_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
