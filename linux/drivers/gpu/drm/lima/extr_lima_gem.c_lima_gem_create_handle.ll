; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_create_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_create_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.lima_bo = type { i32 }
%struct.lima_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_gem_create_handle(%struct.drm_device* %0, %struct.drm_file* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.lima_bo*, align 8
  %14 = alloca %struct.lima_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %16 = call %struct.lima_device* @to_lima_dev(%struct.drm_device* %15)
  store %struct.lima_device* %16, %struct.lima_device** %14, align 8
  %17 = load %struct.lima_device*, %struct.lima_device** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.lima_bo* @lima_bo_create(%struct.lima_device* %17, i32 %18, i32 %19, i32* null)
  store %struct.lima_bo* %20, %struct.lima_bo** %13, align 8
  %21 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %22 = call i64 @IS_ERR(%struct.lima_bo* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %26 = call i32 @PTR_ERR(%struct.lima_bo* %25)
  store i32 %26, i32* %6, align 4
  br label %37

27:                                               ; preds = %5
  %28 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %29 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %30 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %29, i32 0, i32 0
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @drm_gem_handle_create(%struct.drm_file* %28, i32* %30, i32* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %34 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %33, i32 0, i32 0
  %35 = call i32 @drm_gem_object_put_unlocked(i32* %34)
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %27, %24
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.lima_device* @to_lima_dev(%struct.drm_device*) #1

declare dso_local %struct.lima_bo* @lima_bo_create(%struct.lima_device*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.lima_bo*) #1

declare dso_local i32 @PTR_ERR(%struct.lima_bo*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
