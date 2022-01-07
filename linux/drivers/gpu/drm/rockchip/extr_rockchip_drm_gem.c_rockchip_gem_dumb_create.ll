; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }
%struct.rockchip_gem_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rockchip_gem_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_create_dumb*, align 8
  %7 = alloca %struct.rockchip_gem_object*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store %struct.drm_device* %1, %struct.drm_device** %5, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %6, align 8
  %9 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %10 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %13 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = call i32 @DIV_ROUND_UP(i32 %15, i32 8)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @ALIGN(i32 %17, i32 64)
  %19 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %20 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %22 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %25 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %29 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %33 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %36 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %35, i32 0, i32 5
  %37 = call %struct.rockchip_gem_object* @rockchip_gem_create_with_handle(%struct.drm_file* %30, %struct.drm_device* %31, i32 %34, i32* %36)
  store %struct.rockchip_gem_object* %37, %struct.rockchip_gem_object** %7, align 8
  %38 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %7, align 8
  %39 = call i32 @PTR_ERR_OR_ZERO(%struct.rockchip_gem_object* %38)
  ret i32 %39
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.rockchip_gem_object* @rockchip_gem_create_with_handle(%struct.drm_file*, %struct.drm_device*, i32, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.rockchip_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
