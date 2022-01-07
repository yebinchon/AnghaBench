; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_gem_cma_create_with_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_gem_cma_create_with_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_cma_object = type { %struct.drm_gem_object }
%struct.drm_gem_object = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_gem_cma_object* (%struct.drm_file*, %struct.drm_device*, i64, i32*)* @drm_gem_cma_create_with_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_gem_cma_object* @drm_gem_cma_create_with_handle(%struct.drm_file* %0, %struct.drm_device* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.drm_gem_cma_object*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.drm_gem_cma_object*, align 8
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %6, align 8
  store %struct.drm_device* %1, %struct.drm_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call %struct.drm_gem_cma_object* @drm_gem_cma_create(%struct.drm_device* %13, i64 %14)
  store %struct.drm_gem_cma_object* %15, %struct.drm_gem_cma_object** %10, align 8
  %16 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %10, align 8
  %17 = call i64 @IS_ERR(%struct.drm_gem_cma_object* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %10, align 8
  store %struct.drm_gem_cma_object* %20, %struct.drm_gem_cma_object** %5, align 8
  br label %37

21:                                               ; preds = %4
  %22 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %10, align 8
  %23 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %22, i32 0, i32 0
  store %struct.drm_gem_object* %23, %struct.drm_gem_object** %11, align 8
  %24 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @drm_gem_handle_create(%struct.drm_file* %24, %struct.drm_gem_object* %25, i32* %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %29 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %28)
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* %12, align 4
  %34 = call %struct.drm_gem_cma_object* @ERR_PTR(i32 %33)
  store %struct.drm_gem_cma_object* %34, %struct.drm_gem_cma_object** %5, align 8
  br label %37

35:                                               ; preds = %21
  %36 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %10, align 8
  store %struct.drm_gem_cma_object* %36, %struct.drm_gem_cma_object** %5, align 8
  br label %37

37:                                               ; preds = %35, %32, %19
  %38 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %5, align 8
  ret %struct.drm_gem_cma_object* %38
}

declare dso_local %struct.drm_gem_cma_object* @drm_gem_cma_create(%struct.drm_device*, i64) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_cma_object*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local %struct.drm_gem_cma_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
