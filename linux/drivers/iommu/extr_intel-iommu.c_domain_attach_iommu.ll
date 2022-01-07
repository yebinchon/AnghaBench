; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_attach_iommu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_attach_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32*, i32, i32*, i32 }
%struct.intel_iommu = type { i64, i32, i32, i32, i32, i32 }

@device_domain_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: No free domain ids\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, %struct.intel_iommu*)* @domain_attach_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_attach_iommu(%struct.dmar_domain* %0, %struct.intel_iommu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmar_domain*, align 8
  %5 = alloca %struct.intel_iommu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %4, align 8
  store %struct.intel_iommu* %1, %struct.intel_iommu** %5, align 8
  %8 = call i32 @assert_spin_locked(i32* @device_domain_lock)
  %9 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %10 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %9, i32 0, i32 5
  %11 = call i32 @assert_spin_locked(i32* %10)
  %12 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %13 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %16 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %22 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %26 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %29 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %93

34:                                               ; preds = %2
  %35 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %36 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @cap_ndoms(i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %40 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @find_first_zero_bit(i32 %41, i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %6, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %34
  %49 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %50 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %54 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %57 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %63 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @ENOSPC, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %94

68:                                               ; preds = %34
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %71 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @set_bit(i32 %69, i32 %72)
  %74 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %77 = call i32 @set_iommu_domain(%struct.intel_iommu* %74, i32 %75, %struct.dmar_domain* %76)
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %80 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %83 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %78, i32* %85, align 4
  %86 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %87 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %90 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %92 = call i32 @domain_update_iommu_cap(%struct.dmar_domain* %91)
  br label %93

93:                                               ; preds = %68, %2
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %48
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @cap_ndoms(i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @set_iommu_domain(%struct.intel_iommu*, i32, %struct.dmar_domain*) #1

declare dso_local i32 @domain_update_iommu_cap(%struct.dmar_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
