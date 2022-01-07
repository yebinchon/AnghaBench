; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_setversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_setversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.drm_file = type { i32 }
%struct.drm_set_version = type { i32, i32, i32, i64 }

@DRM_IF_MAJOR = common dso_local global i32 0, align 4
@DRM_IF_MINOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @drm_setversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_setversion(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_set_version*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.drm_set_version*
  store %struct.drm_set_version* %11, %struct.drm_set_version** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %16 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %67

19:                                               ; preds = %3
  %20 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %21 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DRM_IF_MAJOR, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %27 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %32 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DRM_IF_MINOR, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %25, %19
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %102

39:                                               ; preds = %30
  %40 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %41 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %44 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DRM_IF_VERSION(i32 %42, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %49 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @max(i32 %47, i32 %50)
  %52 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %55 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %39
  %59 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %60 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %61 = call i32 @drm_set_busid(%struct.drm_device* %59, %struct.drm_file* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %102

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %39
  br label %67

67:                                               ; preds = %66, %3
  %68 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %69 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, -1
  br i1 %71, label %72, label %101

72:                                               ; preds = %67
  %73 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %74 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %77 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %75, %80
  br i1 %81, label %97, label %82

82:                                               ; preds = %72
  %83 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %84 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %82
  %88 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %89 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %92 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %90, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %87, %82, %72
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %9, align 4
  br label %102

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %67
  br label %102

102:                                              ; preds = %101, %97, %64, %36
  %103 = load i32, i32* @DRM_IF_MAJOR, align 4
  %104 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %105 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @DRM_IF_MINOR, align 4
  %107 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %108 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %110 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %115 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %117 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %122 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %121, i32 0, i32 3
  store i64 %120, i64* %122, align 8
  %123 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %124 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load i32, i32* %9, align 4
  ret i32 %126
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_IF_VERSION(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @drm_set_busid(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
