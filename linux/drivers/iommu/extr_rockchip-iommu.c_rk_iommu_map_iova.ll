; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_map_iova.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_map_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_iommu_domain = type { i32 }

@SPAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"iova: %pad already mapped to %pa cannot remap to phys: %pa prot: %#x\0A\00", align 1
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_iommu_domain*, i32*, i32, i32, i64, i64, i32)* @rk_iommu_map_iova to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_iommu_map_iova(%struct.rk_iommu_domain* %0, i32* %1, i32 %2, i32 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.rk_iommu_domain*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.rk_iommu_domain* %0, %struct.rk_iommu_domain** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i64, i64* %14, align 8
  %21 = load i64, i64* @SPAGE_SIZE, align 8
  %22 = udiv i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %17, align 4
  %24 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %9, align 8
  %25 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %24, i32 0, i32 0
  %26 = call i32 @assert_spin_locked(i32* %25)
  store i32 0, i32* %16, align 4
  br label %27

27:                                               ; preds = %52, %7
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %16, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = call i64 @rk_pte_is_page_valid(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %64

41:                                               ; preds = %31
  %42 = load i64, i64* %13, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @rk_mk_pte(i64 %42, i32 %43)
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %16, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  %49 = load i64, i64* @SPAGE_SIZE, align 8
  %50 = load i64, i64* %13, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %13, align 8
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %16, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %27

55:                                               ; preds = %27
  %56 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @rk_table_flush(%struct.rk_iommu_domain* %56, i32 %57, i32 %58)
  %60 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %9, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i64, i64* %14, align 8
  %63 = call i32 @rk_iommu_zap_iova_first_last(%struct.rk_iommu_domain* %60, i32 %61, i64 %62)
  store i32 0, i32* %8, align 4
  br label %92

64:                                               ; preds = %40
  %65 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %16, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* @SPAGE_SIZE, align 8
  %71 = mul i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @rk_iommu_unmap_iova(%struct.rk_iommu_domain* %65, i32* %66, i32 %67, i32 %72)
  %74 = load i32, i32* %16, align 4
  %75 = zext i32 %74 to i64
  %76 = load i64, i64* @SPAGE_SIZE, align 8
  %77 = mul i64 %75, %76
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = add i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %12, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %16, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @rk_pte_page_address(i32 %86)
  store i64 %87, i64* %18, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32* %12, i64* %18, i64* %13, i32 %88)
  %90 = load i32, i32* @EADDRINUSE, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %64, %55
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @rk_pte_is_page_valid(i32) #1

declare dso_local i32 @rk_mk_pte(i64, i32) #1

declare dso_local i32 @rk_table_flush(%struct.rk_iommu_domain*, i32, i32) #1

declare dso_local i32 @rk_iommu_zap_iova_first_last(%struct.rk_iommu_domain*, i32, i64) #1

declare dso_local i32 @rk_iommu_unmap_iova(%struct.rk_iommu_domain*, i32*, i32, i32) #1

declare dso_local i64 @rk_pte_page_address(i32) #1

declare dso_local i32 @pr_err(i8*, i32*, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
