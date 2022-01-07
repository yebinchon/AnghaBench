; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_ctx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_ctx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32 }
%struct.qcom_iommu_ctx = type { i32, i32, %struct.device* }
%struct.qcom_iommu_dev = type { %struct.qcom_iommu_ctx** }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ARM_SMMU_CB_FSR = common dso_local global i32 0, align 4
@qcom_iommu_fault = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"qcom-iommu-fault\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to request IRQ %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"missing reg property\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"found asid %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_iommu_ctx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_iommu_ctx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.qcom_iommu_ctx*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.qcom_iommu_dev*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qcom_iommu_dev* @dev_get_drvdata(i32 %14)
  store %struct.qcom_iommu_dev* %15, %struct.qcom_iommu_dev** %6, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.qcom_iommu_ctx* @devm_kzalloc(%struct.device* %16, i32 16, i32 %17)
  store %struct.qcom_iommu_ctx* %18, %struct.qcom_iommu_ctx** %4, align 8
  %19 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %4, align 8
  %20 = icmp ne %struct.qcom_iommu_ctx* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %107

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %26, i32 0, i32 2
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %4, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.qcom_iommu_ctx* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %7, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = call i32 @devm_ioremap_resource(%struct.device* %34, %struct.resource* %35)
  %37 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %24
  %45 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %107

49:                                               ; preds = %24
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i32 @platform_get_irq(%struct.platform_device* %50, i32 0)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %107

57:                                               ; preds = %49
  %58 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %4, align 8
  %59 = load i32, i32* @ARM_SMMU_CB_FSR, align 4
  %60 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %4, align 8
  %61 = load i32, i32* @ARM_SMMU_CB_FSR, align 4
  %62 = call i32 @iommu_readl(%struct.qcom_iommu_ctx* %60, i32 %61)
  %63 = call i32 @iommu_writel(%struct.qcom_iommu_ctx* %58, i32 %59, i32 %62)
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @qcom_iommu_fault, align 4
  %67 = load i32, i32* @IRQF_SHARED, align 4
  %68 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %4, align 8
  %69 = call i32 @devm_request_irq(%struct.device* %64, i32 %65, i32 %66, i32 %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.qcom_iommu_ctx* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %57
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %107

77:                                               ; preds = %57
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @get_asid(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  br label %107

88:                                               ; preds = %77
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %4, align 8
  %91 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %4, align 8
  %94 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_dbg(%struct.device* %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %4, align 8
  %98 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %6, align 8
  %99 = getelementptr inbounds %struct.qcom_iommu_dev, %struct.qcom_iommu_dev* %98, i32 0, i32 0
  %100 = load %struct.qcom_iommu_ctx**, %struct.qcom_iommu_ctx*** %99, align 8
  %101 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %4, align 8
  %102 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %100, i64 %105
  store %struct.qcom_iommu_ctx* %97, %struct.qcom_iommu_ctx** %106, align 8
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %88, %84, %72, %54, %44, %21
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.qcom_iommu_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.qcom_iommu_ctx* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.qcom_iommu_ctx*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @iommu_writel(%struct.qcom_iommu_ctx*, i32, i32) #1

declare dso_local i32 @iommu_readl(%struct.qcom_iommu_ctx*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.qcom_iommu_ctx*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @get_asid(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
