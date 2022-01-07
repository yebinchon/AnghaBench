; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bufs.c_drm_legacy_freebufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bufs.c_drm_legacy_freebufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma* }
%struct.drm_device_dma = type { i32, %struct.drm_buf** }
%struct.drm_buf = type { %struct.drm_file* }
%struct.drm_file = type { i32 }
%struct.drm_buf_free = type { i32, i32* }

@DRIVER_LEGACY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DRIVER_HAVE_DMA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Index %d (of %d max)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Process %d freeing buffer not owned\0A\00", align 1
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_legacy_freebufs(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device_dma*, align 8
  %9 = alloca %struct.drm_buf_free*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_buf*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_device_dma*, %struct.drm_device_dma** %14, align 8
  store %struct.drm_device_dma* %15, %struct.drm_device_dma** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.drm_buf_free*
  store %struct.drm_buf_free* %17, %struct.drm_buf_free** %9, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load i32, i32* @DRIVER_LEGACY, align 4
  %20 = call i32 @drm_core_check_feature(%struct.drm_device* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %112

25:                                               ; preds = %3
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = load i32, i32* @DRIVER_HAVE_DMA, align 4
  %28 = call i32 @drm_core_check_feature(%struct.drm_device* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %112

33:                                               ; preds = %25
  %34 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %35 = icmp ne %struct.drm_device_dma* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %112

39:                                               ; preds = %33
  %40 = load %struct.drm_buf_free*, %struct.drm_buf_free** %9, align 8
  %41 = getelementptr inbounds %struct.drm_buf_free, %struct.drm_buf_free* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %108, %39
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.drm_buf_free*, %struct.drm_buf_free** %9, align 8
  %47 = getelementptr inbounds %struct.drm_buf_free, %struct.drm_buf_free* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %111

50:                                               ; preds = %44
  %51 = load %struct.drm_buf_free*, %struct.drm_buf_free** %9, align 8
  %52 = getelementptr inbounds %struct.drm_buf_free, %struct.drm_buf_free* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i64 @copy_from_user(i32* %11, i32* %56, i32 4)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @EFAULT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %112

62:                                               ; preds = %50
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %68 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %66, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65, %62
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %74 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  %77 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %112

80:                                               ; preds = %65
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %83 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @array_index_nospec(i32 %81, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %87 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %86, i32 0, i32 1
  %88 = load %struct.drm_buf**, %struct.drm_buf*** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %88, i64 %90
  %92 = load %struct.drm_buf*, %struct.drm_buf** %91, align 8
  store %struct.drm_buf* %92, %struct.drm_buf** %12, align 8
  %93 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %94 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %93, i32 0, i32 0
  %95 = load %struct.drm_file*, %struct.drm_file** %94, align 8
  %96 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %97 = icmp ne %struct.drm_file* %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %80
  %99 = load i32, i32* @current, align 4
  %100 = call i32 @task_pid_nr(i32 %99)
  %101 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %112

104:                                              ; preds = %80
  %105 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %106 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %107 = call i32 @drm_legacy_free_buffer(%struct.drm_device* %105, %struct.drm_buf* %106)
  br label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %44

111:                                              ; preds = %44
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %98, %71, %59, %36, %30, %22
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i64 @copy_from_user(i32*, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @drm_legacy_free_buffer(%struct.drm_device*, %struct.drm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
