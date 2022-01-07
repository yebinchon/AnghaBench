; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_destroy_domain_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_destroy_domain_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i64 }
%struct.arm_smmu_domain = type { i32, %struct.arm_smmu_cfg, %struct.arm_smmu_device* }
%struct.arm_smmu_cfg = type { i64, i64 }
%struct.arm_smmu_device = type { i32*, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@IOMMU_DOMAIN_IDENTITY = common dso_local global i64 0, align 8
@INVALID_IRPTNDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*)* @arm_smmu_destroy_domain_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_destroy_domain_context(%struct.iommu_domain* %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca %struct.arm_smmu_domain*, align 8
  %4 = alloca %struct.arm_smmu_device*, align 8
  %5 = alloca %struct.arm_smmu_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %2, align 8
  %8 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %9 = call %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain* %8)
  store %struct.arm_smmu_domain* %9, %struct.arm_smmu_domain** %3, align 8
  %10 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %11 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %10, i32 0, i32 2
  %12 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %11, align 8
  store %struct.arm_smmu_device* %12, %struct.arm_smmu_device** %4, align 8
  %13 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %14 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %13, i32 0, i32 1
  store %struct.arm_smmu_cfg* %14, %struct.arm_smmu_cfg** %5, align 8
  %15 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %16 = icmp ne %struct.arm_smmu_device* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %19 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IOMMU_DOMAIN_IDENTITY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %1
  br label %82

24:                                               ; preds = %17
  %25 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %26 = call i32 @arm_smmu_rpm_get(%struct.arm_smmu_device* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %82

30:                                               ; preds = %24
  %31 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %32 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %5, align 8
  %35 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %40 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %5, align 8
  %41 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @arm_smmu_write_context_bank(%struct.arm_smmu_device* %39, i64 %42)
  %44 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %5, align 8
  %45 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @INVALID_IRPTNDX, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %30
  %50 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %51 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %54 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %5, align 8
  %57 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %55, %58
  %60 = getelementptr inbounds i32, i32* %52, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  %62 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %63 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %67 = call i32 @devm_free_irq(i32 %64, i32 %65, %struct.iommu_domain* %66)
  br label %68

68:                                               ; preds = %49, %30
  %69 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %70 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @free_io_pgtable_ops(i32 %71)
  %73 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %74 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %5, align 8
  %77 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @__arm_smmu_free_bitmap(i32 %75, i64 %78)
  %80 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %81 = call i32 @arm_smmu_rpm_put(%struct.arm_smmu_device* %80)
  br label %82

82:                                               ; preds = %68, %29, %23
  ret void
}

declare dso_local %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain*) #1

declare dso_local i32 @arm_smmu_rpm_get(%struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_write_context_bank(%struct.arm_smmu_device*, i64) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.iommu_domain*) #1

declare dso_local i32 @free_io_pgtable_ops(i32) #1

declare dso_local i32 @__arm_smmu_free_bitmap(i32, i64) #1

declare dso_local i32 @arm_smmu_rpm_put(%struct.arm_smmu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
