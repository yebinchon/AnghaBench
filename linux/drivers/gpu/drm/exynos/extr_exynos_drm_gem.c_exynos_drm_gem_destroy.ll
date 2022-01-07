; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_gem = type { i32, %struct.drm_gem_object }
%struct.drm_gem_object = type { i64, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"handle count = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exynos_drm_gem_destroy(%struct.exynos_drm_gem* %0) #0 {
  %2 = alloca %struct.exynos_drm_gem*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  store %struct.exynos_drm_gem* %0, %struct.exynos_drm_gem** %2, align 8
  %4 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %2, align 8
  %5 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %4, i32 0, i32 1
  store %struct.drm_gem_object* %5, %struct.drm_gem_object** %3, align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %7 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @to_dma_dev(i32 %8)
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %11 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @DRM_DEV_DEBUG_KMS(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %15 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %20 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %2, align 8
  %21 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @drm_prime_gem_destroy(%struct.drm_gem_object* %19, i32 %22)
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %2, align 8
  %26 = call i32 @exynos_drm_free_buf(%struct.exynos_drm_gem* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %29 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %28)
  %30 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %2, align 8
  %31 = call i32 @kfree(%struct.exynos_drm_gem* %30)
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32) #1

declare dso_local i32 @to_dma_dev(i32) #1

declare dso_local i32 @drm_prime_gem_destroy(%struct.drm_gem_object*, i32) #1

declare dso_local i32 @exynos_drm_free_buf(%struct.exynos_drm_gem*) #1

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #1

declare dso_local i32 @kfree(%struct.exynos_drm_gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
