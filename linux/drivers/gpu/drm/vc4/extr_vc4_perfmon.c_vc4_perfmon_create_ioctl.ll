; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_perfmon.c_vc4_perfmon_create_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_perfmon.c_vc4_perfmon_create_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.vc4_file* }
%struct.vc4_file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vc4_dev = type { i32 }
%struct.drm_vc4_perfmon_create = type { i32, i64*, i32 }
%struct.vc4_perfmon = type { i64*, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Creating perfmon no VC4 V3D probed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRM_VC4_MAX_PERF_COUNTERS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VC4_PERFCNT_NUM_EVENTS = common dso_local global i64 0, align 8
@counters = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VC4_PERFMONID_MIN = common dso_local global i32 0, align 4
@VC4_PERFMONID_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_perfmon_create_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.vc4_dev*, align 8
  %9 = alloca %struct.vc4_file*, align 8
  %10 = alloca %struct.drm_vc4_perfmon_create*, align 8
  %11 = alloca %struct.vc4_perfmon*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %14)
  store %struct.vc4_dev* %15, %struct.vc4_dev** %8, align 8
  %16 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %17 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %16, i32 0, i32 0
  %18 = load %struct.vc4_file*, %struct.vc4_file** %17, align 8
  store %struct.vc4_file* %18, %struct.vc4_file** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.drm_vc4_perfmon_create*
  store %struct.drm_vc4_perfmon_create* %20, %struct.drm_vc4_perfmon_create** %10, align 8
  %21 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %22 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %140

29:                                               ; preds = %3
  %30 = load %struct.drm_vc4_perfmon_create*, %struct.drm_vc4_perfmon_create** %10, align 8
  %31 = getelementptr inbounds %struct.drm_vc4_perfmon_create, %struct.drm_vc4_perfmon_create* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DRM_VC4_MAX_PERF_COUNTERS, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.drm_vc4_perfmon_create*, %struct.drm_vc4_perfmon_create** %10, align 8
  %37 = getelementptr inbounds %struct.drm_vc4_perfmon_create, %struct.drm_vc4_perfmon_create* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %29
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %140

43:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %64, %43
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.drm_vc4_perfmon_create*, %struct.drm_vc4_perfmon_create** %10, align 8
  %47 = getelementptr inbounds %struct.drm_vc4_perfmon_create, %struct.drm_vc4_perfmon_create* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load %struct.drm_vc4_perfmon_create*, %struct.drm_vc4_perfmon_create** %10, align 8
  %52 = getelementptr inbounds %struct.drm_vc4_perfmon_create, %struct.drm_vc4_perfmon_create* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VC4_PERFCNT_NUM_EVENTS, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %140

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %44

67:                                               ; preds = %44
  %68 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %11, align 8
  %69 = load i32, i32* @counters, align 4
  %70 = load %struct.drm_vc4_perfmon_create*, %struct.drm_vc4_perfmon_create** %10, align 8
  %71 = getelementptr inbounds %struct.drm_vc4_perfmon_create, %struct.drm_vc4_perfmon_create* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @struct_size(%struct.vc4_perfmon* %68, i32 %69, i32 %72)
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.vc4_perfmon* @kzalloc(i32 %73, i32 %74)
  store %struct.vc4_perfmon* %75, %struct.vc4_perfmon** %11, align 8
  %76 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %11, align 8
  %77 = icmp ne %struct.vc4_perfmon* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %67
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %140

81:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %102, %81
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.drm_vc4_perfmon_create*, %struct.drm_vc4_perfmon_create** %10, align 8
  %85 = getelementptr inbounds %struct.drm_vc4_perfmon_create, %struct.drm_vc4_perfmon_create* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ult i32 %83, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load %struct.drm_vc4_perfmon_create*, %struct.drm_vc4_perfmon_create** %10, align 8
  %90 = getelementptr inbounds %struct.drm_vc4_perfmon_create, %struct.drm_vc4_perfmon_create* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %11, align 8
  %97 = getelementptr inbounds %struct.vc4_perfmon, %struct.vc4_perfmon* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64 %95, i64* %101, align 8
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %12, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %82

105:                                              ; preds = %82
  %106 = load %struct.drm_vc4_perfmon_create*, %struct.drm_vc4_perfmon_create** %10, align 8
  %107 = getelementptr inbounds %struct.drm_vc4_perfmon_create, %struct.drm_vc4_perfmon_create* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %11, align 8
  %110 = getelementptr inbounds %struct.vc4_perfmon, %struct.vc4_perfmon* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %11, align 8
  %112 = getelementptr inbounds %struct.vc4_perfmon, %struct.vc4_perfmon* %111, i32 0, i32 2
  %113 = call i32 @refcount_set(i32* %112, i32 1)
  %114 = load %struct.vc4_file*, %struct.vc4_file** %9, align 8
  %115 = getelementptr inbounds %struct.vc4_file, %struct.vc4_file* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = call i32 @mutex_lock(i32* %116)
  %118 = load %struct.vc4_file*, %struct.vc4_file** %9, align 8
  %119 = getelementptr inbounds %struct.vc4_file, %struct.vc4_file* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %11, align 8
  %122 = load i32, i32* @VC4_PERFMONID_MIN, align 4
  %123 = load i32, i32* @VC4_PERFMONID_MAX, align 4
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call i32 @idr_alloc(i32* %120, %struct.vc4_perfmon* %121, i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load %struct.vc4_file*, %struct.vc4_file** %9, align 8
  %127 = getelementptr inbounds %struct.vc4_file, %struct.vc4_file* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i32, i32* %13, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %105
  %133 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %11, align 8
  %134 = call i32 @kfree(%struct.vc4_perfmon* %133)
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %4, align 4
  br label %140

136:                                              ; preds = %105
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.drm_vc4_perfmon_create*, %struct.drm_vc4_perfmon_create** %10, align 8
  %139 = getelementptr inbounds %struct.drm_vc4_perfmon_create, %struct.drm_vc4_perfmon_create* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %136, %132, %78, %60, %40, %25
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local %struct.vc4_perfmon* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.vc4_perfmon*, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.vc4_perfmon*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.vc4_perfmon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
