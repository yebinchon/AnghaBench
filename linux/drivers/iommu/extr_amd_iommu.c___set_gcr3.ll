; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c___set_gcr3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c___set_gcr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i64, i32, i32 }

@PAGE_MODE_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@GCR3_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.protection_domain*, i32, i64)* @__set_gcr3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_gcr3(%struct.protection_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.protection_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.protection_domain* %0, %struct.protection_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.protection_domain*, %struct.protection_domain** %5, align 8
  %10 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PAGE_MODE_NONE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load %struct.protection_domain*, %struct.protection_domain** %5, align 8
  %19 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.protection_domain*, %struct.protection_domain** %5, align 8
  %22 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64* @__get_gcr3_pte(i32 %20, i32 %23, i32 %24, i32 1)
  store i64* %25, i64** %8, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %41

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @PAGE_MASK, align 8
  %34 = and i64 %32, %33
  %35 = load i64, i64* @GCR3_VALID, align 8
  %36 = or i64 %34, %35
  %37 = load i64*, i64** %8, align 8
  store i64 %36, i64* %37, align 8
  %38 = load %struct.protection_domain*, %struct.protection_domain** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @__amd_iommu_flush_tlb(%struct.protection_domain* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %31, %28, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64* @__get_gcr3_pte(i32, i32, i32, i32) #1

declare dso_local i32 @__amd_iommu_flush_tlb(%struct.protection_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
