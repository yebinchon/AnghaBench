; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_vertex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma*, i32* }
%struct.drm_device_dma = type { i64, %struct.drm_buf** }
%struct.drm_buf = type { i32, i64, %struct.drm_file*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.drm_file = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"pid=%d index=%d count=%d discard=%d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"buffer index %d (of %d max)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@R128_CCE_VC_CNTL_PRIM_TYPE_TRI_TYPE2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"buffer prim %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"process %d using buffer owned by %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"sending pending buffer %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @r128_cce_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r128_cce_vertex(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.drm_device_dma*, align 8
  %10 = alloca %struct.drm_buf*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
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
  %20 = bitcast i8* %19 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %12, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %21, %struct.drm_file* %22)
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @DEV_INIT_TEST_WITH_RETURN(i32* %24)
  %26 = load i32, i32* @current, align 4
  %27 = call i32 @task_pid_nr(i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %30, i32 %33, i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.drm_device_dma*, %struct.drm_device_dma** %9, align 8
  %47 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %45, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %42, %3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.drm_device_dma*, %struct.drm_device_dma** %9, align 8
  %55 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %56, 1
  %58 = call i32 (i8*, i64, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %142

61:                                               ; preds = %42
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @R128_CCE_VC_CNTL_PRIM_TYPE_TRI_TYPE2, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66, %61
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, i64, ...) @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %142

79:                                               ; preds = %66
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @RING_SPACE_TEST_WITH_RETURN(i32* %80)
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @VB_AGE_TEST_WITH_RETURN(i32* %82)
  %84 = load %struct.drm_device_dma*, %struct.drm_device_dma** %9, align 8
  %85 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %84, i32 0, i32 1
  %86 = load %struct.drm_buf**, %struct.drm_buf*** %85, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %86, i64 %89
  %91 = load %struct.drm_buf*, %struct.drm_buf** %90, align 8
  store %struct.drm_buf* %91, %struct.drm_buf** %10, align 8
  %92 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %93 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  store %struct.TYPE_4__* %94, %struct.TYPE_4__** %11, align 8
  %95 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %96 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %95, i32 0, i32 2
  %97 = load %struct.drm_file*, %struct.drm_file** %96, align 8
  %98 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %99 = icmp ne %struct.drm_file* %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %79
  %101 = load i32, i32* @current, align 4
  %102 = call i32 @task_pid_nr(i32 %101)
  %103 = sext i32 %102 to i64
  %104 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %105 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %104, i32 0, i32 2
  %106 = load %struct.drm_file*, %struct.drm_file** %105, align 8
  %107 = call i32 (i8*, i64, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %103, %struct.drm_file* %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %142

110:                                              ; preds = %79
  %111 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %112 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (i8*, i64, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %142

122:                                              ; preds = %110
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %127 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %139 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %140 = call i32 @r128_cce_dispatch_vertex(%struct.drm_device* %138, %struct.drm_buf* %139)
  %141 = call i32 (...) @COMMIT_RING()
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %122, %115, %100, %72, %50
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @DEV_INIT_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, ...) #1

declare dso_local i32 @RING_SPACE_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @VB_AGE_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @r128_cce_dispatch_vertex(%struct.drm_device*, %struct.drm_buf*) #1

declare dso_local i32 @COMMIT_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
