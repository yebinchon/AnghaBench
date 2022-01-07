; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_create_with_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_create_with_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bo = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tegra_bo* @tegra_bo_create_with_handle(%struct.drm_file* %0, %struct.drm_device* %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.tegra_bo*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.tegra_bo*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %7, align 8
  store %struct.drm_device* %1, %struct.drm_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call %struct.tegra_bo* @tegra_bo_create(%struct.drm_device* %14, i64 %15, i64 %16)
  store %struct.tegra_bo* %17, %struct.tegra_bo** %12, align 8
  %18 = load %struct.tegra_bo*, %struct.tegra_bo** %12, align 8
  %19 = call i64 @IS_ERR(%struct.tegra_bo* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load %struct.tegra_bo*, %struct.tegra_bo** %12, align 8
  store %struct.tegra_bo* %22, %struct.tegra_bo** %6, align 8
  br label %42

23:                                               ; preds = %5
  %24 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %25 = load %struct.tegra_bo*, %struct.tegra_bo** %12, align 8
  %26 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %25, i32 0, i32 0
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @drm_gem_handle_create(%struct.drm_file* %24, i32* %26, i32* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.tegra_bo*, %struct.tegra_bo** %12, align 8
  %33 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %32, i32 0, i32 0
  %34 = call i32 @tegra_bo_free_object(i32* %33)
  %35 = load i32, i32* %13, align 4
  %36 = call %struct.tegra_bo* @ERR_PTR(i32 %35)
  store %struct.tegra_bo* %36, %struct.tegra_bo** %6, align 8
  br label %42

37:                                               ; preds = %23
  %38 = load %struct.tegra_bo*, %struct.tegra_bo** %12, align 8
  %39 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %38, i32 0, i32 0
  %40 = call i32 @drm_gem_object_put_unlocked(i32* %39)
  %41 = load %struct.tegra_bo*, %struct.tegra_bo** %12, align 8
  store %struct.tegra_bo* %41, %struct.tegra_bo** %6, align 8
  br label %42

42:                                               ; preds = %37, %31, %21
  %43 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  ret %struct.tegra_bo* %43
}

declare dso_local %struct.tegra_bo* @tegra_bo_create(%struct.drm_device*, i64, i64) #1

declare dso_local i64 @IS_ERR(%struct.tegra_bo*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

declare dso_local i32 @tegra_bo_free_object(i32*) #1

declare dso_local %struct.tegra_bo* @ERR_PTR(i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
