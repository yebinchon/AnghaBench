; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_free_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_free_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_gem = type { i32, i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"dma_addr is invalid.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"dma_addr(0x%lx), size(0x%lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_gem*)* @exynos_drm_free_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_drm_free_buf(%struct.exynos_drm_gem* %0) #0 {
  %2 = alloca %struct.exynos_drm_gem*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.exynos_drm_gem* %0, %struct.exynos_drm_gem** %2, align 8
  %4 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %2, align 8
  %5 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %4, i32 0, i32 5
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %2, align 8
  %9 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @DRM_DEV_DEBUG_KMS(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %2, align 8
  %22 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %2, align 8
  %25 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @DRM_DEV_DEBUG_KMS(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %23, i32 %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = call i32 @to_dma_dev(%struct.drm_device* %28)
  %30 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %2, align 8
  %31 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %2, align 8
  %34 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %2, align 8
  %37 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %2, align 8
  %41 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dma_free_attrs(i32 %29, i32 %32, i32 %35, i32 %39, i32 %42)
  %44 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %2, align 8
  %45 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @kvfree(i32 %46)
  br label %48

48:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, ...) #1

declare dso_local i32 @dma_free_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @to_dma_dev(%struct.drm_device*) #1

declare dso_local i32 @kvfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
