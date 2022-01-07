; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_prime.c_radeon_gem_prime_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_prime.c_radeon_gem_prime_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_buf* @radeon_gem_prime_export(%struct.drm_gem_object* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_bo*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %8 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %7)
  store %struct.radeon_bo* %8, %struct.radeon_bo** %6, align 8
  %9 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %10 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @radeon_ttm_tt_has_userptr(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.dma_buf* @ERR_PTR(i32 %17)
  store %struct.dma_buf* %18, %struct.dma_buf** %3, align 8
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.dma_buf* @drm_gem_prime_export(%struct.drm_gem_object* %20, i32 %21)
  store %struct.dma_buf* %22, %struct.dma_buf** %3, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  ret %struct.dma_buf* %24
}

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i64 @radeon_ttm_tt_has_userptr(i32) #1

declare dso_local %struct.dma_buf* @ERR_PTR(i32) #1

declare dso_local %struct.dma_buf* @drm_gem_prime_export(%struct.drm_gem_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
