; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_create_with_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_create_with_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_gem_object = type { %struct.drm_gem_object }
%struct.drm_gem_object = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rockchip_gem_object* (%struct.drm_file*, %struct.drm_device*, i32, i32*)* @rockchip_gem_create_with_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rockchip_gem_object* @rockchip_gem_create_with_handle(%struct.drm_file* %0, %struct.drm_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.rockchip_gem_object*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rockchip_gem_object*, align 8
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %6, align 8
  store %struct.drm_device* %1, %struct.drm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.rockchip_gem_object* @rockchip_gem_create_object(%struct.drm_device* %13, i32 %14, i32 0)
  store %struct.rockchip_gem_object* %15, %struct.rockchip_gem_object** %10, align 8
  %16 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %10, align 8
  %17 = call i64 @IS_ERR(%struct.rockchip_gem_object* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %10, align 8
  %21 = call %struct.rockchip_gem_object* @ERR_CAST(%struct.rockchip_gem_object* %20)
  store %struct.rockchip_gem_object* %21, %struct.rockchip_gem_object** %5, align 8
  br label %41

22:                                               ; preds = %4
  %23 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %10, align 8
  %24 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %23, i32 0, i32 0
  store %struct.drm_gem_object* %24, %struct.drm_gem_object** %11, align 8
  %25 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @drm_gem_handle_create(%struct.drm_file* %25, %struct.drm_gem_object* %26, i32* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %34 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %33)
  %35 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %10, align 8
  store %struct.rockchip_gem_object* %35, %struct.rockchip_gem_object** %5, align 8
  br label %41

36:                                               ; preds = %31
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %38 = call i32 @rockchip_gem_free_object(%struct.drm_gem_object* %37)
  %39 = load i32, i32* %12, align 4
  %40 = call %struct.rockchip_gem_object* @ERR_PTR(i32 %39)
  store %struct.rockchip_gem_object* %40, %struct.rockchip_gem_object** %5, align 8
  br label %41

41:                                               ; preds = %36, %32, %19
  %42 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %5, align 8
  ret %struct.rockchip_gem_object* %42
}

declare dso_local %struct.rockchip_gem_object* @rockchip_gem_create_object(%struct.drm_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rockchip_gem_object*) #1

declare dso_local %struct.rockchip_gem_object* @ERR_CAST(%struct.rockchip_gem_object*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @rockchip_gem_free_object(%struct.drm_gem_object*) #1

declare dso_local %struct.rockchip_gem_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
