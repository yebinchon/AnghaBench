; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_dma.c_mga_dma_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_dma.c_mga_dma_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.drm_file = type { i32 }
%struct.drm_lock = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s%s%s\0A\00", align 1
@_DRM_LOCK_FLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"flush, \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_DRM_LOCK_FLUSH_ALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"flush all, \00", align 1
@_DRM_LOCK_QUIESCENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"idle, \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mga_dma_flush(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.drm_lock*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_lock*
  store %struct.drm_lock* %15, %struct.drm_lock** %9, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %18 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %16, %struct.drm_file* %17)
  %19 = load %struct.drm_lock*, %struct.drm_lock** %9, align 8
  %20 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @_DRM_LOCK_FLUSH, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = load %struct.drm_lock*, %struct.drm_lock** %9, align 8
  %28 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @_DRM_LOCK_FLUSH_ALL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %35 = load %struct.drm_lock*, %struct.drm_lock** %9, align 8
  %36 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @_DRM_LOCK_QUIESCENT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %43 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %34, i8* %42)
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @WRAP_WAIT_WITH_RETURN(i32* %44)
  %46 = load %struct.drm_lock*, %struct.drm_lock** %9, align 8
  %47 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @_DRM_LOCK_FLUSH, align 4
  %50 = load i32, i32* @_DRM_LOCK_FLUSH_ALL, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %3
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @mga_do_dma_flush(i32* %55)
  br label %57

57:                                               ; preds = %54, %3
  %58 = load %struct.drm_lock*, %struct.drm_lock** %9, align 8
  %59 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @_DRM_LOCK_QUIESCENT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @mga_do_wait_for_idle(i32* %65)
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @WRAP_WAIT_WITH_RETURN(i32*) #1

declare dso_local i32 @mga_do_dma_flush(i32*) #1

declare dso_local i32 @mga_do_wait_for_idle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
