; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_create_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_create_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_gem_object = type { i32 }
%struct.drm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rockchip_gem_object* @rockchip_gem_create_object(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rockchip_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rockchip_gem_object*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.rockchip_gem_object* @rockchip_gem_alloc_object(%struct.drm_device* %10, i32 %11)
  store %struct.rockchip_gem_object* %12, %struct.rockchip_gem_object** %8, align 8
  %13 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %8, align 8
  %14 = call i64 @IS_ERR(%struct.rockchip_gem_object* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %8, align 8
  store %struct.rockchip_gem_object* %17, %struct.rockchip_gem_object** %4, align 8
  br label %32

18:                                               ; preds = %3
  %19 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @rockchip_gem_alloc_buf(%struct.rockchip_gem_object* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %27

25:                                               ; preds = %18
  %26 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %8, align 8
  store %struct.rockchip_gem_object* %26, %struct.rockchip_gem_object** %4, align 8
  br label %32

27:                                               ; preds = %24
  %28 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %8, align 8
  %29 = call i32 @rockchip_gem_release_object(%struct.rockchip_gem_object* %28)
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.rockchip_gem_object* @ERR_PTR(i32 %30)
  store %struct.rockchip_gem_object* %31, %struct.rockchip_gem_object** %4, align 8
  br label %32

32:                                               ; preds = %27, %25, %16
  %33 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  ret %struct.rockchip_gem_object* %33
}

declare dso_local %struct.rockchip_gem_object* @rockchip_gem_alloc_object(%struct.drm_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rockchip_gem_object*) #1

declare dso_local i32 @rockchip_gem_alloc_buf(%struct.rockchip_gem_object*, i32) #1

declare dso_local i32 @rockchip_gem_release_object(%struct.rockchip_gem_object*) #1

declare dso_local %struct.rockchip_gem_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
