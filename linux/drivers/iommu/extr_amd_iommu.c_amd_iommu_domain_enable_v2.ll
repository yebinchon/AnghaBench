; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_domain_enable_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_domain_enable_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.protection_domain = type { i64, i32, i32, i32, i32* }

@PASID_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@amd_iommu_max_glx_val = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PD_IOMMUV2_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_iommu_domain_enable_v2(%struct.iommu_domain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.protection_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %11 = call %struct.protection_domain* @to_pdomain(%struct.iommu_domain* %10)
  store %struct.protection_domain* %11, %struct.protection_domain** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PASID_MASK, align 4
  %17 = add nsw i32 %16, 1
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %91

22:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %31, %22
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %25, -512
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 9
  store i32 %33, i32* %5, align 4
  br label %23

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @amd_iommu_max_glx_val, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %91

41:                                               ; preds = %34
  %42 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %43 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %42, i32 0, i32 3
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %49 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %41
  %53 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %54 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PD_IOMMUV2_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52, %41
  br label %85

60:                                               ; preds = %52
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call i64 @get_zeroed_page(i32 %63)
  %65 = inttoptr i64 %64 to i8*
  %66 = bitcast i8* %65 to i32*
  %67 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %68 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  %69 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %70 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %85

74:                                               ; preds = %60
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %77 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @PD_IOMMUV2_MASK, align 4
  %79 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %80 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %84 = call i32 @update_domain(%struct.protection_domain* %83)
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %74, %73, %59
  %86 = load %struct.protection_domain*, %struct.protection_domain** %6, align 8
  %87 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %86, i32 0, i32 3
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %85, %38, %19
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.protection_domain* @to_pdomain(%struct.iommu_domain*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @update_domain(%struct.protection_domain*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
