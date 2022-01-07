; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_gem.c_qxl_gem_object_create_with_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_gem.c_qxl_gem_object_create_with_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.qxl_surface = type { i32 }
%struct.qxl_bo = type { i32 }
%struct.drm_gem_object = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_gem_object_create_with_handle(%struct.qxl_device* %0, %struct.drm_file* %1, i32 %2, i64 %3, %struct.qxl_surface* %4, %struct.qxl_bo** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qxl_device*, align 8
  %10 = alloca %struct.drm_file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.qxl_surface*, align 8
  %14 = alloca %struct.qxl_bo**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.drm_gem_object*, align 8
  %17 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %9, align 8
  store %struct.drm_file* %1, %struct.drm_file** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store %struct.qxl_surface* %4, %struct.qxl_surface** %13, align 8
  store %struct.qxl_bo** %5, %struct.qxl_bo*** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.qxl_bo**, %struct.qxl_bo*** %14, align 8
  %19 = icmp ne %struct.qxl_bo** %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32*, i32** %15, align 8
  %24 = icmp ne i32* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.qxl_device*, %struct.qxl_device** %9, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.qxl_surface*, %struct.qxl_surface** %13, align 8
  %32 = call i32 @qxl_gem_object_create(%struct.qxl_device* %28, i64 %29, i32 0, i32 %30, i32 0, i32 0, %struct.qxl_surface* %31, %struct.drm_gem_object** %16)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %7
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %53

38:                                               ; preds = %7
  %39 = load %struct.drm_file*, %struct.drm_file** %10, align 8
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @drm_gem_handle_create(%struct.drm_file* %39, %struct.drm_gem_object* %40, i32* %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %17, align 4
  store i32 %46, i32* %8, align 4
  br label %53

47:                                               ; preds = %38
  %48 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %49 = call %struct.qxl_bo* @gem_to_qxl_bo(%struct.drm_gem_object* %48)
  %50 = load %struct.qxl_bo**, %struct.qxl_bo*** %14, align 8
  store %struct.qxl_bo* %49, %struct.qxl_bo** %50, align 8
  %51 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %52 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %51)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %47, %45, %35
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @qxl_gem_object_create(%struct.qxl_device*, i64, i32, i32, i32, i32, %struct.qxl_surface*, %struct.drm_gem_object**) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local %struct.qxl_bo* @gem_to_qxl_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
