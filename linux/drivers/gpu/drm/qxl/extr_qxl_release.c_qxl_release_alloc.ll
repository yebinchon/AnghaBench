; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_release.c_qxl_release_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_release.c_qxl_release_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32, i64, i32 }
%struct.qxl_release = type { i32, i32, %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"allocated release %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_device*, i32, %struct.qxl_release**)* @qxl_release_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_release_alloc(%struct.qxl_device* %0, i32 %1, %struct.qxl_release** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qxl_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qxl_release**, align 8
  %8 = alloca %struct.qxl_release*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qxl_release** %2, %struct.qxl_release*** %7, align 8
  store i64 48, i64* %10, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.qxl_release* @kmalloc(i64 %11, i32 %12)
  store %struct.qxl_release* %13, %struct.qxl_release** %8, align 8
  %14 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %15 = icmp ne %struct.qxl_release* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %71

20:                                               ; preds = %3
  %21 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %22 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %26 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %28 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %30 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %32 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %31, i32 0, i32 3
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @idr_preload(i32 %34)
  %36 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %37 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %40 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %39, i32 0, i32 2
  %41 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %42 = load i32, i32* @GFP_NOWAIT, align 4
  %43 = call i32 @idr_alloc(i32* %40, %struct.qxl_release* %41, i32 1, i32 0, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %45 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %49 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %52 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = call i32 (...) @idr_preload_end()
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %20
  %58 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %59 = call i32 @kfree(%struct.qxl_release* %58)
  %60 = load %struct.qxl_release**, %struct.qxl_release*** %7, align 8
  store %struct.qxl_release* null, %struct.qxl_release** %60, align 8
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %71

62:                                               ; preds = %20
  %63 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %64 = load %struct.qxl_release**, %struct.qxl_release*** %7, align 8
  store %struct.qxl_release* %63, %struct.qxl_release** %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %69 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %62, %57, %16
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.qxl_release* @kmalloc(i64, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.qxl_release*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @kfree(%struct.qxl_release*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
