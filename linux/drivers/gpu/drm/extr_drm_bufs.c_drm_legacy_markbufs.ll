; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bufs.c_drm_legacy_markbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bufs.c_drm_legacy_markbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma* }
%struct.drm_device_dma = type { %struct.drm_buf_entry* }
%struct.drm_buf_entry = type { i64, i64, i64 }
%struct.drm_file = type { i32 }
%struct.drm_buf_desc = type { i64, i64, i32 }

@DRIVER_LEGACY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DRIVER_HAVE_DMA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%d, %d, %d\0A\00", align 1
@DRM_MIN_ORDER = common dso_local global i32 0, align 4
@DRM_MAX_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_legacy_markbufs(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device_dma*, align 8
  %9 = alloca %struct.drm_buf_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_buf_entry*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.drm_device_dma*, %struct.drm_device_dma** %13, align 8
  store %struct.drm_device_dma* %14, %struct.drm_device_dma** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.drm_buf_desc*
  store %struct.drm_buf_desc* %16, %struct.drm_buf_desc** %9, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = load i32, i32* @DRIVER_LEGACY, align 4
  %19 = call i32 @drm_core_check_feature(%struct.drm_device* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %112

24:                                               ; preds = %3
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = load i32, i32* @DRIVER_HAVE_DMA, align 4
  %27 = call i32 @drm_core_check_feature(%struct.drm_device* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %112

32:                                               ; preds = %24
  %33 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %34 = icmp ne %struct.drm_device_dma* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %112

38:                                               ; preds = %32
  %39 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %40 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %43 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %46 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %44, i64 %47)
  %49 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %50 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @order_base_2(i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @DRM_MIN_ORDER, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %38
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @DRM_MAX_ORDER, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %38
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %112

63:                                               ; preds = %56
  %64 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %65 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %64, i32 0, i32 0
  %66 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %66, i64 %68
  store %struct.drm_buf_entry* %69, %struct.drm_buf_entry** %11, align 8
  %70 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %71 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %63
  %75 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %76 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %11, align 8
  %79 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74, %63
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %112

85:                                               ; preds = %74
  %86 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %87 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %92 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %11, align 8
  %95 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90, %85
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %112

101:                                              ; preds = %90
  %102 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %103 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %11, align 8
  %106 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %108 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %11, align 8
  %111 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %101, %98, %82, %60, %35, %29, %21
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i64) #1

declare dso_local i32 @order_base_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
