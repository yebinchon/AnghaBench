; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ttm.c_qxl_ttm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ttm.c_qxl_ttm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@qxl_bo_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"failed initializing buffer object driver(%d).\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed initializing VRAM heap.\0A\00", align 1
@TTM_PL_PRIV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed initializing Surfaces heap.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"qxl: %uM of VRAM memory size\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"qxl: %luM of IO pages memory ready (VRAM domain)\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"qxl: %uM of Surface memory size\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_ttm_init(%struct.qxl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qxl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %3, align 8
  %6 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %7 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %10 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ttm_bo_device_init(i32* %8, i32* @qxl_bo_driver, i32 %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %74

22:                                               ; preds = %1
  %23 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %24 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %23, i32 0, i32 3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = udiv i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %31 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* @TTM_PL_VRAM, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ttm_bo_init_mm(i32* %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %74

41:                                               ; preds = %22
  %42 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %43 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* @TTM_PL_PRIV, align 4
  %46 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %47 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = udiv i32 %48, %49
  %51 = call i32 @ttm_bo_init_mm(i32* %44, i32 %45, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %74

57:                                               ; preds = %41
  %58 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %59 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = udiv i32 %61, 1048576
  %63 = call i32 @DRM_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = mul i32 %64, %65
  %67 = udiv i32 %66, 1048576
  %68 = call i32 @DRM_INFO(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %70 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = udiv i32 %71, 1048576
  %73 = call i32 @DRM_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %57, %54, %38, %18
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @ttm_bo_device_init(i32*, i32*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @ttm_bo_init_mm(i32*, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
