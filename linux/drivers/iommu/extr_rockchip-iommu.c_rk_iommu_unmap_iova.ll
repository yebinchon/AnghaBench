; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_unmap_iova.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_unmap_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_iommu_domain = type { i32 }

@SPAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rk_iommu_domain*, i32*, i32, i64)* @rk_iommu_unmap_iova to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rk_iommu_unmap_iova(%struct.rk_iommu_domain* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.rk_iommu_domain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rk_iommu_domain* %0, %struct.rk_iommu_domain** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @SPAGE_SIZE, align 8
  %14 = udiv i64 %12, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %5, align 8
  %17 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %16, i32 0, i32 0
  %18 = call i32 @assert_spin_locked(i32* %17)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %40, %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @rk_pte_is_page_valid(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %43

33:                                               ; preds = %23
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @rk_mk_pte_invalid(i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %19

43:                                               ; preds = %32, %19
  %44 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @rk_table_flush(%struct.rk_iommu_domain* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* @SPAGE_SIZE, align 8
  %51 = mul i64 %49, %50
  ret i64 %51
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @rk_pte_is_page_valid(i32) #1

declare dso_local i32 @rk_mk_pte_invalid(i32) #1

declare dso_local i32 @rk_table_flush(%struct.rk_iommu_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
