; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_ioc32.c_mga_compat_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_ioc32.c_mga_compat_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.file*, i32, i64)*, i32 }
%struct.file = type { %struct.drm_file* }
%struct.drm_file = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@DRM_COMMAND_BASE = common dso_local global i32 0, align 4
@mga_compat_ioctls = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"pid=%d, dev=0x%lx, auth=%d, %s\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ret = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mga_compat_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_file*, align 8
  %10 = alloca i32 (%struct.file*, i32, i64)**, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @DRM_IOCTL_NR(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.drm_file*, %struct.drm_file** %15, align 8
  store %struct.drm_file* %16, %struct.drm_file** %9, align 8
  store i32 (%struct.file*, i32, i64)** null, i32 (%struct.file*, i32, i64)*** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @DRM_COMMAND_BASE, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @drm_compat_ioctl(%struct.file* %21, i32 %22, i64 %23)
  store i64 %24, i64* %4, align 8
  br label %91

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @DRM_COMMAND_BASE, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mga_compat_ioctls, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %28)
  %30 = add i32 %27, %29
  %31 = icmp uge i32 %26, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @drm_ioctl(%struct.file* %33, i32 %34, i64 %35)
  store i64 %36, i64* %4, align 8
  br label %91

37:                                               ; preds = %25
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mga_compat_ioctls, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @DRM_COMMAND_BASE, align 4
  %41 = sub i32 %39, %40
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32 (%struct.file*, i32, i64)*, i32 (%struct.file*, i32, i64)** %44, align 8
  %46 = bitcast i32 (%struct.file*, i32, i64)* %45 to i32 (%struct.file*, i32, i64)**
  store i32 (%struct.file*, i32, i64)** %46, i32 (%struct.file*, i32, i64)*** %10, align 8
  %47 = load i32 (%struct.file*, i32, i64)**, i32 (%struct.file*, i32, i64)*** %10, align 8
  %48 = icmp ne i32 (%struct.file*, i32, i64)** %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %37
  %50 = load %struct.file*, %struct.file** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @drm_ioctl(%struct.file* %50, i32 %51, i64 %52)
  store i64 %53, i64* %4, align 8
  br label %91

54:                                               ; preds = %37
  %55 = load i32, i32* @current, align 4
  %56 = call i32 @task_pid_nr(i32 %55)
  %57 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %58 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @old_encode_dev(i32 %63)
  %65 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %66 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mga_compat_ioctls, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @DRM_COMMAND_BASE, align 4
  %71 = sub i32 %69, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %56, i64 %64, i32 %67, i32 %75)
  %77 = load i32 (%struct.file*, i32, i64)**, i32 (%struct.file*, i32, i64)*** %10, align 8
  %78 = load i32 (%struct.file*, i32, i64)*, i32 (%struct.file*, i32, i64)** %77, align 8
  %79 = load %struct.file*, %struct.file** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i64, i64* %7, align 8
  %82 = call i32 %78(%struct.file* %79, i32 %80, i64 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %54
  %86 = load i32, i32* %11, align 4
  %87 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %85, %54
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %88, %49, %32, %20
  %92 = load i64, i64* %4, align 8
  ret i64 %92
}

declare dso_local i32 @DRM_IOCTL_NR(i32) #1

declare dso_local i64 @drm_compat_ioctl(%struct.file*, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @drm_ioctl(%struct.file*, i32, i64) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i64 @old_encode_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
