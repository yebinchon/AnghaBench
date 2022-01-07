; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_map_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_map_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_gem_object = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"dma_buf_map_attachment() error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"dma_buf_map_attachment() returned an (unsupported) scattered list\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"dma_buf_map_attachment() returned a small buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @armada_gem_map_import(%struct.armada_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.armada_gem_object*, align 8
  %4 = alloca i32, align 4
  store %struct.armada_gem_object* %0, %struct.armada_gem_object** %3, align 8
  %5 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %6 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @DMA_TO_DEVICE, align 4
  %10 = call %struct.TYPE_6__* @dma_buf_map_attachment(i32 %8, i32 %9)
  %11 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %12 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %11, i32 0, i32 1
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %12, align 8
  %13 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %14 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = call i64 @IS_ERR(%struct.TYPE_6__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %20 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i32 @PTR_ERR(%struct.TYPE_6__* %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %24 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %23, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %66

28:                                               ; preds = %1
  %29 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %30 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %66

39:                                               ; preds = %28
  %40 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %41 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @sg_dma_len(i32 %44)
  %46 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %47 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %45, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %66

55:                                               ; preds = %39
  %56 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %57 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sg_dma_address(i32 %60)
  %62 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %63 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.armada_gem_object*, %struct.armada_gem_object** %3, align 8
  %65 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %55, %51, %35, %18
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_6__* @dma_buf_map_attachment(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i64 @sg_dma_len(i32) #1

declare dso_local i32 @sg_dma_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
