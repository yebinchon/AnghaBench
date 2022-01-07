; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, i32*, %struct.TYPE_4__, %struct.ttm_bo_device* }
%struct.TYPE_4__ = type { i32 }
%struct.ttm_bo_device = type { %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i32* (%struct.ttm_buffer_object*, i32)* }

@TTM_PAGE_FLAG_DMA32 = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_NO_RETRY = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Illegal buffer object type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_tt_create(%struct.ttm_buffer_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_bo_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %9 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %8, i32 0, i32 3
  %10 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %9, align 8
  store %struct.ttm_bo_device* %10, %struct.ttm_bo_device** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %12 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dma_resv_assert_held(i32 %14)
  %16 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %17 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @TTM_PAGE_FLAG_DMA32, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %26 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @TTM_PAGE_FLAG_NO_RETRY, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %35 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %50 [
    i32 130, label %37
    i32 129, label %45
    i32 128, label %46
  ]

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @TTM_PAGE_FLAG_ZERO_ALLOC, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %37
  br label %56

45:                                               ; preds = %33
  br label %56

46:                                               ; preds = %33
  %47 = load i32, i32* @TTM_PAGE_FLAG_SG, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %56

50:                                               ; preds = %33
  %51 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %52 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %78

56:                                               ; preds = %46, %45, %44
  %57 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %58 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32* (%struct.ttm_buffer_object*, i32)*, i32* (%struct.ttm_buffer_object*, i32)** %60, align 8
  %62 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32* %61(%struct.ttm_buffer_object* %62, i32 %63)
  %65 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %66 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %68 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %56
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %74, %50
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @dma_resv_assert_held(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
