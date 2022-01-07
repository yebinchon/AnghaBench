; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_iommu_fault_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_iommu_fault_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu = type { i32, i32, %struct.iommu_domain* }
%struct.iommu_domain = type { i32 }
%struct.omap_iommu_domain = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MMU_IRQENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: errs:0x%08x da:0x%08x pgd:0x%p *pgd:px%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"%s: errs:0x%08x da:0x%08x pgd:0x%p *pgd:0x%08x pte:0x%p *pte:0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @iommu_fault_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_fault_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.omap_iommu*, align 8
  %11 = alloca %struct.iommu_domain*, align 8
  %12 = alloca %struct.omap_iommu_domain*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.omap_iommu*
  store %struct.omap_iommu* %14, %struct.omap_iommu** %10, align 8
  %15 = load %struct.omap_iommu*, %struct.omap_iommu** %10, align 8
  %16 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %15, i32 0, i32 2
  %17 = load %struct.iommu_domain*, %struct.iommu_domain** %16, align 8
  store %struct.iommu_domain* %17, %struct.iommu_domain** %11, align 8
  %18 = load %struct.iommu_domain*, %struct.iommu_domain** %11, align 8
  %19 = call %struct.omap_iommu_domain* @to_omap_domain(%struct.iommu_domain* %18)
  store %struct.omap_iommu_domain* %19, %struct.omap_iommu_domain** %12, align 8
  %20 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %12, align 8
  %21 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %88

26:                                               ; preds = %2
  %27 = load %struct.omap_iommu*, %struct.omap_iommu** %10, align 8
  %28 = call i64 @iommu_report_fault(%struct.omap_iommu* %27, i64* %6)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %3, align 4
  br label %88

33:                                               ; preds = %26
  %34 = load %struct.iommu_domain*, %struct.iommu_domain** %11, align 8
  %35 = load %struct.omap_iommu*, %struct.omap_iommu** %10, align 8
  %36 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @report_iommu_fault(%struct.iommu_domain* %34, i32 %37, i64 %38, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %42, i32* %3, align 4
  br label %88

43:                                               ; preds = %33
  %44 = load %struct.omap_iommu*, %struct.omap_iommu** %10, align 8
  %45 = load i32, i32* @MMU_IRQENABLE, align 4
  %46 = call i32 @iommu_write_reg(%struct.omap_iommu* %44, i32 0, i32 %45)
  %47 = load %struct.omap_iommu*, %struct.omap_iommu** %10, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i64* @iopgd_offset(%struct.omap_iommu* %47, i64 %48)
  store i64* %49, i64** %8, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @iopgd_is_table(i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %43
  %55 = load %struct.omap_iommu*, %struct.omap_iommu** %10, align 8
  %56 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.omap_iommu*, %struct.omap_iommu** %10, align 8
  %59 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32, i8*, i32, i64, i64, i64*, i64, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %60, i64 %61, i64 %62, i64* %63, i64 %65)
  %67 = load i32, i32* @IRQ_NONE, align 4
  store i32 %67, i32* %3, align 4
  br label %88

68:                                               ; preds = %43
  %69 = load i64*, i64** %8, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i64* @iopte_offset(i64* %69, i64 %70)
  store i64* %71, i64** %9, align 8
  %72 = load %struct.omap_iommu*, %struct.omap_iommu** %10, align 8
  %73 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.omap_iommu*, %struct.omap_iommu** %10, align 8
  %76 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64*, i64** %8, align 8
  %81 = load i64*, i64** %8, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i32, i8*, i32, i64, i64, i64*, i64, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %77, i64 %78, i64 %79, i64* %80, i64 %82, i64* %83, i64 %85)
  %87 = load i32, i32* @IRQ_NONE, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %68, %54, %41, %31, %24
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.omap_iommu_domain* @to_omap_domain(%struct.iommu_domain*) #1

declare dso_local i64 @iommu_report_fault(%struct.omap_iommu*, i64*) #1

declare dso_local i32 @report_iommu_fault(%struct.iommu_domain*, i32, i64, i32) #1

declare dso_local i32 @iommu_write_reg(%struct.omap_iommu*, i32, i32) #1

declare dso_local i64* @iopgd_offset(%struct.omap_iommu*, i64) #1

declare dso_local i32 @iopgd_is_table(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64, i64, i64*, i64, ...) #1

declare dso_local i64* @iopte_offset(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
