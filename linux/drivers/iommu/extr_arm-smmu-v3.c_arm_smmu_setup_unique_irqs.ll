; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_setup_unique_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_setup_unique_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@arm_smmu_evtq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"arm-smmu-v3-evtq\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to enable evtq irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"no evtq irq - events will not be reported!\0A\00", align 1
@arm_smmu_gerror_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"arm-smmu-v3-gerror\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to enable gerror irq\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"no gerr irq - errors will not be reported!\0A\00", align 1
@ARM_SMMU_FEAT_PRI = common dso_local global i32 0, align 4
@arm_smmu_priq_thread = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"arm-smmu-v3-priq\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to enable priq irq\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"no priq irq - PRI will be broken\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_smmu_device*)* @arm_smmu_setup_unique_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_setup_unique_irqs(%struct.arm_smmu_device* %0) #0 {
  %2 = alloca %struct.arm_smmu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %2, align 8
  %5 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %6 = call i32 @arm_smmu_setup_msis(%struct.arm_smmu_device* %5)
  %7 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %8 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %16 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @arm_smmu_evtq_thread, align 4
  %20 = load i32, i32* @IRQF_ONESHOT, align 4
  %21 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %22 = call i32 @devm_request_threaded_irq(i32 %17, i32 %18, i32* null, i32 %19, i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.arm_smmu_device* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %27 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %14
  br label %36

31:                                               ; preds = %1
  %32 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %33 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_warn(i32 %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %30
  %37 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %38 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %44 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @arm_smmu_gerror_handler, align 4
  %48 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %49 = call i32 @devm_request_irq(i32 %45, i32 %46, i32 %47, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), %struct.arm_smmu_device* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %54 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_warn(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %42
  br label %63

58:                                               ; preds = %36
  %59 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %60 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_warn(i32 %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %57
  %64 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %65 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ARM_SMMU_FEAT_PRI, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %63
  %71 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %72 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %70
  %79 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %80 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @arm_smmu_priq_thread, align 4
  %84 = load i32, i32* @IRQF_ONESHOT, align 4
  %85 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %86 = call i32 @devm_request_threaded_irq(i32 %81, i32 %82, i32* null, i32 %83, i32 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %struct.arm_smmu_device* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %78
  %90 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %91 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_warn(i32 %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %78
  br label %100

95:                                               ; preds = %70
  %96 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %97 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dev_warn(i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %95, %94
  br label %101

101:                                              ; preds = %100, %63
  ret void
}

declare dso_local i32 @arm_smmu_setup_msis(%struct.arm_smmu_device*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i8*, %struct.arm_smmu_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i8*, %struct.arm_smmu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
