; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_detach_iommu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_detach_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i64*, i32, i32* }
%struct.intel_iommu = type { i64, i32, i32 }

@device_domain_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, %struct.intel_iommu*)* @domain_detach_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_detach_iommu(%struct.dmar_domain* %0, %struct.intel_iommu* %1) #0 {
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca %struct.intel_iommu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %3, align 8
  store %struct.intel_iommu* %1, %struct.intel_iommu** %4, align 8
  %7 = call i32 @assert_spin_locked(i32* @device_domain_lock)
  %8 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %9 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %8, i32 0, i32 2
  %10 = call i32 @assert_spin_locked(i32* %9)
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %12 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %15 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i64, i64* %13, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %21 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %25 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %28 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %2
  %34 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %35 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %38 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %44 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @clear_bit(i32 %42, i32 %45)
  %47 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @set_iommu_domain(%struct.intel_iommu* %47, i32 %48, i32* null)
  %50 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %51 = call i32 @domain_update_iommu_cap(%struct.dmar_domain* %50)
  %52 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %53 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %56 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %33, %2
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_iommu_domain(%struct.intel_iommu*, i32, i32*) #1

declare dso_local i32 @domain_update_iommu_cap(%struct.dmar_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
