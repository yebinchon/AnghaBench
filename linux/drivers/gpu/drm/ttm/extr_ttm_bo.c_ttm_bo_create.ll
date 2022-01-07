; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.ttm_buffer_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_create(%struct.ttm_bo_device* %0, i64 %1, i32 %2, %struct.ttm_placement* %3, i32 %4, i32 %5, %struct.ttm_buffer_object** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_bo_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ttm_placement*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ttm_buffer_object**, align 8
  %16 = alloca %struct.ttm_buffer_object*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ttm_placement* %3, %struct.ttm_placement** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.ttm_buffer_object** %6, %struct.ttm_buffer_object*** %15, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ttm_buffer_object* @kzalloc(i32 4, i32 %19)
  store %struct.ttm_buffer_object* %20, %struct.ttm_buffer_object** %16, align 8
  %21 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %16, align 8
  %22 = icmp eq %struct.ttm_buffer_object* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %52

29:                                               ; preds = %7
  %30 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @ttm_bo_acc_size(%struct.ttm_bo_device* %30, i64 %31, i32 4)
  store i64 %32, i64* %17, align 8
  %33 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %9, align 8
  %34 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %16, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.ttm_placement*, %struct.ttm_placement** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i64, i64* %17, align 8
  %41 = call i32 @ttm_bo_init(%struct.ttm_bo_device* %33, %struct.ttm_buffer_object* %34, i64 %35, i32 %36, %struct.ttm_placement* %37, i32 %38, i32 %39, i64 %40, i32* null, i32* null, i32* null)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %16, align 8
  %49 = load %struct.ttm_buffer_object**, %struct.ttm_buffer_object*** %15, align 8
  store %struct.ttm_buffer_object* %48, %struct.ttm_buffer_object** %49, align 8
  br label %50

50:                                               ; preds = %47, %29
  %51 = load i32, i32* %18, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %26
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local %struct.ttm_buffer_object* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ttm_bo_acc_size(%struct.ttm_bo_device*, i64, i32) #1

declare dso_local i32 @ttm_bo_init(%struct.ttm_bo_device*, %struct.ttm_buffer_object*, i64, i32, %struct.ttm_placement*, i32, i32, i64, i32*, i32*, i32*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
