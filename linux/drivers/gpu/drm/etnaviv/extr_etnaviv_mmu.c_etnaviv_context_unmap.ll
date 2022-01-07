; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_context_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_context_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.etnaviv_iommu_context*, i64, i64)* }

@SZ_4K = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"unaligned: iova 0x%lx size 0x%zx min_pagesz 0x%zx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_iommu_context*, i64, i64)* @etnaviv_context_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_context_unmap(%struct.etnaviv_iommu_context* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.etnaviv_iommu_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %10 = load i64, i64* @SZ_4K, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @IS_ALIGNED(i64 %13, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19, i64 %20)
  br label %49

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %29 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64 (%struct.etnaviv_iommu_context*, i64, i64)*, i64 (%struct.etnaviv_iommu_context*, i64, i64)** %33, align 8
  %35 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i64 %34(%struct.etnaviv_iommu_context* %35, i64 %36, i64 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  br label %49

42:                                               ; preds = %27
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %8, align 8
  br label %23

49:                                               ; preds = %17, %41, %23
  ret void
}

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i32 @pr_err(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
