; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_bci.c_savage_bci_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_bci.c_savage_bci_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma* }
%struct.drm_device_dma = type { i64 }
%struct.drm_file = type { i32 }
%struct.drm_dma = type { i64, i64, i64 }

@.str = private unnamed_addr constant [49 x i8] c"Process %d trying to send %d buffers via drmDMA\0A\00", align 1
@current = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Process %d trying to get %d buffers (of %d max)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @savage_bci_buffers(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device_dma*, align 8
  %9 = alloca %struct.drm_dma*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_device_dma*, %struct.drm_device_dma** %12, align 8
  store %struct.drm_device_dma* %13, %struct.drm_device_dma** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_dma*
  store %struct.drm_dma* %15, %struct.drm_dma** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %18 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %16, %struct.drm_file* %17)
  %19 = load %struct.drm_dma*, %struct.drm_dma** %9, align 8
  %20 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load i32, i32* @current, align 4
  %25 = call i32 @task_pid_nr(i32 %24)
  %26 = load %struct.drm_dma*, %struct.drm_dma** %9, align 8
  %27 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, i32, i64, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %71

32:                                               ; preds = %3
  %33 = load %struct.drm_dma*, %struct.drm_dma** %9, align 8
  %34 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load %struct.drm_dma*, %struct.drm_dma** %9, align 8
  %39 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %42 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %37, %32
  %46 = load i32, i32* @current, align 4
  %47 = call i32 @task_pid_nr(i32 %46)
  %48 = load %struct.drm_dma*, %struct.drm_dma** %9, align 8
  %49 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %52 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, i32, i64, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %47, i64 %50, i64 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %71

57:                                               ; preds = %37
  %58 = load %struct.drm_dma*, %struct.drm_dma** %9, align 8
  %59 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.drm_dma*, %struct.drm_dma** %9, align 8
  %61 = getelementptr inbounds %struct.drm_dma, %struct.drm_dma* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %66 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %67 = load %struct.drm_dma*, %struct.drm_dma** %9, align 8
  %68 = call i32 @savage_bci_get_buffers(%struct.drm_device* %65, %struct.drm_file* %66, %struct.drm_dma* %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %64, %57
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %45, %23
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i64, ...) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @savage_bci_get_buffers(%struct.drm_device*, %struct.drm_file*, %struct.drm_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
