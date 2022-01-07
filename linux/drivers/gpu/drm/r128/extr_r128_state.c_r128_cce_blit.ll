; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_blit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32*, %struct.drm_device_dma* }
%struct.drm_device_dma = type { i64 }
%struct.drm_file = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"pid=%d index=%d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"buffer index %d (of %d max)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @r128_cce_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r128_cce_blit(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device_dma*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
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
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %10, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %20, %struct.drm_file* %21)
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @DEV_INIT_TEST_WITH_RETURN(i32* %23)
  %25 = load i32, i32* @current, align 4
  %26 = call i32 @task_pid_nr(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %40 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %35, %3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %48 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, 1
  %51 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %46, i64 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %65

54:                                               ; preds = %35
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @RING_SPACE_TEST_WITH_RETURN(i32* %55)
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @VB_AGE_TEST_WITH_RETURN(i32* %57)
  %59 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %60 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %62 = call i32 @r128_cce_dispatch_blit(%struct.drm_device* %59, %struct.drm_file* %60, %struct.TYPE_3__* %61)
  store i32 %62, i32* %11, align 4
  %63 = call i32 (...) @COMMIT_RING()
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %54, %43
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @DEV_INIT_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, i64) #1

declare dso_local i32 @RING_SPACE_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @VB_AGE_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @r128_cce_dispatch_blit(%struct.drm_device*, %struct.drm_file*, %struct.TYPE_3__*) #1

declare dso_local i32 @COMMIT_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
