; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_do_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_do_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i64 }
%struct.iommu_dev_data = type { i64, i64, i32, i32, %struct.protection_domain*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.protection_domain = type { i32*, i32, i32 }

@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_dev_data*, %struct.protection_domain*)* @do_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_attach(%struct.iommu_dev_data* %0, %struct.protection_domain* %1) #0 {
  %3 = alloca %struct.iommu_dev_data*, align 8
  %4 = alloca %struct.protection_domain*, align 8
  %5 = alloca %struct.amd_iommu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.iommu_dev_data* %0, %struct.iommu_dev_data** %3, align 8
  store %struct.protection_domain* %1, %struct.protection_domain** %4, align 8
  %8 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %9 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %10 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %8, i64 %11
  %13 = load %struct.amd_iommu*, %struct.amd_iommu** %12, align 8
  store %struct.amd_iommu* %13, %struct.amd_iommu** %5, align 8
  %14 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %15 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %18 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %22 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %23 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %22, i32 0, i32 4
  store %struct.protection_domain* %21, %struct.protection_domain** %23, align 8
  %24 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %25 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %24, i32 0, i32 3
  %26 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %27 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %26, i32 0, i32 2
  %28 = call i32 @list_add(i32* %25, i32* %27)
  %29 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %30 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %33 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %39 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %43 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %48 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @set_dte_entry(i64 %44, %struct.protection_domain* %45, i32 %46, i32 %49)
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %53 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %2
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %61 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @set_dte_entry(i64 %57, %struct.protection_domain* %58, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %56, %2
  %65 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %66 = call i32 @device_flush_dte(%struct.iommu_dev_data* %65)
  ret void
}

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @set_dte_entry(i64, %struct.protection_domain*, i32, i32) #1

declare dso_local i32 @device_flush_dte(%struct.iommu_dev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
