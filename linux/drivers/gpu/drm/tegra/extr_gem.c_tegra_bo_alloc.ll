; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.tegra_drm* }
%struct.tegra_drm = type { i64 }
%struct.tegra_bo = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to allocate buffer of size %zu\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.tegra_bo*)* @tegra_bo_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bo_alloc(%struct.drm_device* %0, %struct.tegra_bo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.tegra_bo*, align 8
  %6 = alloca %struct.tegra_drm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.tegra_bo* %1, %struct.tegra_bo** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.tegra_drm*, %struct.tegra_drm** %10, align 8
  store %struct.tegra_drm* %11, %struct.tegra_drm** %6, align 8
  %12 = load %struct.tegra_drm*, %struct.tegra_drm** %6, align 8
  %13 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %19 = call i32 @tegra_bo_get_pages(%struct.drm_device* %17, %struct.tegra_bo* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %67

24:                                               ; preds = %16
  %25 = load %struct.tegra_drm*, %struct.tegra_drm** %6, align 8
  %26 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %27 = call i32 @tegra_bo_iommu_map(%struct.tegra_drm* %25, %struct.tegra_bo* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %33 = call i32 @tegra_bo_free(%struct.drm_device* %31, %struct.tegra_bo* %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %67

35:                                               ; preds = %24
  br label %66

36:                                               ; preds = %2
  %37 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %38 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %8, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %46 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %45, i32 0, i32 1
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = load i32, i32* @__GFP_NOWARN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @dma_alloc_wc(i32 %43, i64 %44, i32* %46, i32 %49)
  %51 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %52 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %54 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %36
  %58 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %67

65:                                               ; preds = %36
  br label %66

66:                                               ; preds = %65, %35
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %57, %30, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @tegra_bo_get_pages(%struct.drm_device*, %struct.tegra_bo*) #1

declare dso_local i32 @tegra_bo_iommu_map(%struct.tegra_drm*, %struct.tegra_bo*) #1

declare dso_local i32 @tegra_bo_free(%struct.drm_device*, %struct.tegra_bo*) #1

declare dso_local i32 @dma_alloc_wc(i32, i64, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
