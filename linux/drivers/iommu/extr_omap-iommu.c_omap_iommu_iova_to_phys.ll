; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_iova_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_iova_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.omap_iommu_domain = type { %struct.omap_iommu_device* }
%struct.omap_iommu_device = type { %struct.omap_iommu* }
%struct.omap_iommu = type { %struct.device* }
%struct.device = type { i32 }

@IOPTE_MASK = common dso_local global i32 0, align 4
@IOLARGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bogus pte 0x%x, da 0x%llx\00", align 1
@IOSECTION_MASK = common dso_local global i32 0, align 4
@IOSUPER_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"bogus pgd 0x%x, da 0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, i64)* @omap_iommu_iova_to_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_iommu_iova_to_phys(%struct.iommu_domain* %0, i64 %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.omap_iommu_domain*, align 8
  %6 = alloca %struct.omap_iommu_device*, align 8
  %7 = alloca %struct.omap_iommu*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %13 = call %struct.omap_iommu_domain* @to_omap_domain(%struct.iommu_domain* %12)
  store %struct.omap_iommu_domain* %13, %struct.omap_iommu_domain** %5, align 8
  %14 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %5, align 8
  %15 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %14, i32 0, i32 0
  %16 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %15, align 8
  store %struct.omap_iommu_device* %16, %struct.omap_iommu_device** %6, align 8
  %17 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %6, align 8
  %18 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %17, i32 0, i32 0
  %19 = load %struct.omap_iommu*, %struct.omap_iommu** %18, align 8
  store %struct.omap_iommu* %19, %struct.omap_iommu** %7, align 8
  %20 = load %struct.omap_iommu*, %struct.omap_iommu** %7, align 8
  %21 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %8, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.omap_iommu*, %struct.omap_iommu** %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @iopgtable_lookup_entry(%struct.omap_iommu* %23, i64 %24, i32** %9, i32** %10)
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %58

28:                                               ; preds = %2
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @iopte_is_small(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* @IOPTE_MASK, align 4
  %38 = call i32 @omap_iommu_translate(i32 %35, i64 %36, i32 %37)
  store i32 %38, i32* %11, align 4
  br label %57

39:                                               ; preds = %28
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @iopte_is_large(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %4, align 8
  %48 = load i32, i32* @IOLARGE_MASK, align 4
  %49 = call i32 @omap_iommu_translate(i32 %46, i64 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  br label %56

50:                                               ; preds = %39
  %51 = load %struct.device*, %struct.device** %8, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %53, i64 %54)
  br label %56

56:                                               ; preds = %50, %44
  br label %57

57:                                               ; preds = %56, %33
  br label %88

58:                                               ; preds = %2
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @iopgd_is_section(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %4, align 8
  %67 = load i32, i32* @IOSECTION_MASK, align 4
  %68 = call i32 @omap_iommu_translate(i32 %65, i64 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %87

69:                                               ; preds = %58
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @iopgd_is_super(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %4, align 8
  %78 = load i32, i32* @IOSUPER_MASK, align 4
  %79 = call i32 @omap_iommu_translate(i32 %76, i64 %77, i32 %78)
  store i32 %79, i32* %11, align 4
  br label %86

80:                                               ; preds = %69
  %81 = load %struct.device*, %struct.device** %8, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %83, i64 %84)
  br label %86

86:                                               ; preds = %80, %74
  br label %87

87:                                               ; preds = %86, %63
  br label %88

88:                                               ; preds = %87, %57
  %89 = load i32, i32* %11, align 4
  ret i32 %89
}

declare dso_local %struct.omap_iommu_domain* @to_omap_domain(%struct.iommu_domain*) #1

declare dso_local i32 @iopgtable_lookup_entry(%struct.omap_iommu*, i64, i32**, i32**) #1

declare dso_local i64 @iopte_is_small(i32) #1

declare dso_local i32 @omap_iommu_translate(i32, i64, i32) #1

declare dso_local i64 @iopte_is_large(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i64) #1

declare dso_local i64 @iopgd_is_section(i32) #1

declare dso_local i64 @iopgd_is_super(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
