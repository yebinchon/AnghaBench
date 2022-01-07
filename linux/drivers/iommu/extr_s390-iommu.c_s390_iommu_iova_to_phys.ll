; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_s390-iommu.c_s390_iommu_iova_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_s390-iommu.c_s390_iommu_iova_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.s390_domain = type { i64*, i32 }

@ZPCI_PTE_ADDR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu_domain*, i64)* @s390_iommu_iova_to_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @s390_iommu_iova_to_phys(%struct.iommu_domain* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.s390_domain*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %16 = call %struct.s390_domain* @to_s390_domain(%struct.iommu_domain* %15)
  store %struct.s390_domain* %16, %struct.s390_domain** %6, align 8
  store i64 0, i64* %14, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %19 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %26 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %2
  store i64 0, i64* %3, align 8
  br label %105

31:                                               ; preds = %23
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @calc_rtx(i64 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @calc_sx(i64 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @calc_px(i64 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.s390_domain*, %struct.s390_domain** %6, align 8
  %39 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  store i64* %40, i64** %9, align 8
  %41 = load %struct.s390_domain*, %struct.s390_domain** %6, align 8
  %42 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %41, i32 0, i32 1
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load i64*, i64** %9, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %99

47:                                               ; preds = %31
  %48 = load i64*, i64** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @reg_entry_isvalid(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %99

55:                                               ; preds = %47
  %56 = load i64*, i64** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i64* @get_rt_sto(i64 %60)
  store i64* %61, i64** %7, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %98

64:                                               ; preds = %55
  %65 = load i64*, i64** %7, align 8
  %66 = load i32, i32* %12, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @reg_entry_isvalid(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %64
  %73 = load i64*, i64** %7, align 8
  %74 = load i32, i32* %12, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i64* @get_st_pto(i64 %77)
  store i64* %78, i64** %8, align 8
  %79 = load i64*, i64** %8, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %81, label %97

81:                                               ; preds = %72
  %82 = load i64*, i64** %8, align 8
  %83 = load i32, i32* %13, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @pt_entry_isvalid(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %81
  %90 = load i64*, i64** %8, align 8
  %91 = load i32, i32* %13, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ZPCI_PTE_ADDR_MASK, align 8
  %96 = and i64 %94, %95
  store i64 %96, i64* %14, align 8
  br label %97

97:                                               ; preds = %89, %81, %72
  br label %98

98:                                               ; preds = %97, %64, %55
  br label %99

99:                                               ; preds = %98, %47, %31
  %100 = load %struct.s390_domain*, %struct.s390_domain** %6, align 8
  %101 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %100, i32 0, i32 1
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load i64, i64* %14, align 8
  store i64 %104, i64* %3, align 8
  br label %105

105:                                              ; preds = %99, %30
  %106 = load i64, i64* %3, align 8
  ret i64 %106
}

declare dso_local %struct.s390_domain* @to_s390_domain(%struct.iommu_domain*) #1

declare dso_local i32 @calc_rtx(i64) #1

declare dso_local i32 @calc_sx(i64) #1

declare dso_local i32 @calc_px(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @reg_entry_isvalid(i64) #1

declare dso_local i64* @get_rt_sto(i64) #1

declare dso_local i64* @get_st_pto(i64) #1

declare dso_local i64 @pt_entry_isvalid(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
