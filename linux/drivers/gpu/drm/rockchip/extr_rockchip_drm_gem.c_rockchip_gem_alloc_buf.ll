; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_gem_object = type { %struct.drm_gem_object }
%struct.drm_gem_object = type { %struct.drm_device* }
%struct.drm_device = type { %struct.rockchip_drm_private* }
%struct.rockchip_drm_private = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_gem_object*, i32)* @rockchip_gem_alloc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_gem_alloc_buf(%struct.rockchip_gem_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rockchip_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.rockchip_drm_private*, align 8
  store %struct.rockchip_gem_object* %0, %struct.rockchip_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %10 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %9, i32 0, i32 0
  store %struct.drm_gem_object* %10, %struct.drm_gem_object** %6, align 8
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %12 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %15, align 8
  store %struct.rockchip_drm_private* %16, %struct.rockchip_drm_private** %8, align 8
  %17 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %8, align 8
  %18 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @rockchip_gem_alloc_iommu(%struct.rockchip_gem_object* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @rockchip_gem_alloc_dma(%struct.rockchip_gem_object* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @rockchip_gem_alloc_iommu(%struct.rockchip_gem_object*, i32) #1

declare dso_local i32 @rockchip_gem_alloc_dma(%struct.rockchip_gem_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
