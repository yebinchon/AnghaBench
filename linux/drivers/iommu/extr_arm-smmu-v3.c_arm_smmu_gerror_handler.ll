; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_gerror_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_gerror_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i64, i32 }

@ARM_SMMU_GERROR = common dso_local global i64 0, align 8
@ARM_SMMU_GERRORN = common dso_local global i64 0, align 8
@GERROR_ERR_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"unexpected global error reported (0x%08x), this could be serious\0A\00", align 1
@GERROR_SFM_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"device has entered Service Failure Mode!\0A\00", align 1
@GERROR_MSI_GERROR_ABT_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"GERROR MSI write aborted\0A\00", align 1
@GERROR_MSI_PRIQ_ABT_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"PRIQ MSI write aborted\0A\00", align 1
@GERROR_MSI_EVTQ_ABT_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"EVTQ MSI write aborted\0A\00", align 1
@GERROR_MSI_CMDQ_ABT_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"CMDQ MSI write aborted\0A\00", align 1
@GERROR_PRIQ_ABT_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"PRIQ write aborted -- events may have been lost\0A\00", align 1
@GERROR_EVTQ_ABT_ERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"EVTQ write aborted -- events may have been lost\0A\00", align 1
@GERROR_CMDQ_ERR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arm_smmu_gerror_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_gerror_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.arm_smmu_device*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.arm_smmu_device*
  store %struct.arm_smmu_device* %11, %struct.arm_smmu_device** %9, align 8
  %12 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %13 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ARM_SMMU_GERROR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %19 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ARM_SMMU_GERRORN, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl_relaxed(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @GERROR_ERR_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %127

33:                                               ; preds = %2
  %34 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %35 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (i32, i8*, ...) @dev_warn(i32 %36, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @GERROR_SFM_ERR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %45 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %49 = call i32 @arm_smmu_device_disable(%struct.arm_smmu_device* %48)
  br label %50

50:                                               ; preds = %43, %33
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @GERROR_MSI_GERROR_ABT_ERR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %57 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @dev_warn(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @GERROR_MSI_PRIQ_ABT_ERR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %67 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, ...) @dev_warn(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @GERROR_MSI_EVTQ_ABT_ERR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %77 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32, i8*, ...) @dev_warn(i32 %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @GERROR_MSI_CMDQ_ABT_ERR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %87 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, ...) @dev_warn(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @GERROR_PRIQ_ABT_ERR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %97 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %95, %90
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @GERROR_EVTQ_ABT_ERR, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %107 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %110

110:                                              ; preds = %105, %100
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @GERROR_CMDQ_ERR, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %117 = call i32 @arm_smmu_cmdq_skip_err(%struct.arm_smmu_device* %116)
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %121 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @ARM_SMMU_GERRORN, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 %119, i64 %124)
  %126 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %118, %31
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @arm_smmu_device_disable(%struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_cmdq_skip_err(%struct.arm_smmu_device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
