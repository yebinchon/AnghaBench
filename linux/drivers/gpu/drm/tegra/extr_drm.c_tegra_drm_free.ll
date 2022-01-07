; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_tegra_drm_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_tegra_drm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_drm = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra_drm_free(%struct.tegra_drm* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tegra_drm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.tegra_drm* %0, %struct.tegra_drm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %10 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %15 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @iova_align(i32* %16, i64 %17)
  store i64 %18, i64* %6, align 8
  br label %22

19:                                               ; preds = %4
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @PAGE_ALIGN(i64 %20)
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %24 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @iommu_unmap(i64 %30, i32 %31, i64 %32)
  %34 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %35 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %38 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @iova_pfn(i32* %39, i32 %40)
  %42 = call i32 @free_iova(i32* %36, i32 %41)
  br label %43

43:                                               ; preds = %27, %22
  %44 = load i8*, i8** %7, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @get_order(i64 %46)
  %48 = call i32 @free_pages(i64 %45, i32 %47)
  ret void
}

declare dso_local i64 @iova_align(i32*, i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @iommu_unmap(i64, i32, i64) #1

declare dso_local i32 @free_iova(i32*, i32) #1

declare dso_local i32 @iova_pfn(i32*, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
