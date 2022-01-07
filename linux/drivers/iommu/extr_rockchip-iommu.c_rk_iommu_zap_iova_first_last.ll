; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_zap_iova_first_last.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_zap_iova_first_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_iommu_domain = type { i32 }

@SPAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_iommu_domain*, i64, i64)* @rk_iommu_zap_iova_first_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_iommu_zap_iova_first_last(%struct.rk_iommu_domain* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rk_iommu_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rk_iommu_domain* %0, %struct.rk_iommu_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @SPAGE_SIZE, align 8
  %10 = call i32 @rk_iommu_zap_iova(%struct.rk_iommu_domain* %7, i64 %8, i64 %9)
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @SPAGE_SIZE, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %16, %17
  %19 = load i64, i64* @SPAGE_SIZE, align 8
  %20 = sub i64 %18, %19
  %21 = load i64, i64* @SPAGE_SIZE, align 8
  %22 = call i32 @rk_iommu_zap_iova(%struct.rk_iommu_domain* %15, i64 %20, i64 %21)
  br label %23

23:                                               ; preds = %14, %3
  ret void
}

declare dso_local i32 @rk_iommu_zap_iova(%struct.rk_iommu_domain*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
