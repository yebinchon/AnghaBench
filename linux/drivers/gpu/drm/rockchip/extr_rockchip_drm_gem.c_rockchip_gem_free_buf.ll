; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_free_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_free_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_gem_object = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_gem_object*)* @rockchip_gem_free_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_gem_free_buf(%struct.rockchip_gem_object* %0) #0 {
  %2 = alloca %struct.rockchip_gem_object*, align 8
  store %struct.rockchip_gem_object* %0, %struct.rockchip_gem_object** %2, align 8
  %3 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %2, align 8
  %4 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %2, align 8
  %9 = call i32 @rockchip_gem_free_iommu(%struct.rockchip_gem_object* %8)
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %2, align 8
  %12 = call i32 @rockchip_gem_free_dma(%struct.rockchip_gem_object* %11)
  br label %13

13:                                               ; preds = %10, %7
  ret void
}

declare dso_local i32 @rockchip_gem_free_iommu(%struct.rockchip_gem_object*) #1

declare dso_local i32 @rockchip_gem_free_dma(%struct.rockchip_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
