; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-icu.c_mvebu_icu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-icu.c_mvebu_icu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mvebu_icu = type { i64, %struct.TYPE_5__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to map icu base address.\0A\00", align 1
@legacy_bindings = common dso_local global i32 0, align 4
@ICU_MAX_IRQS = common dso_local global i32 0, align 4
@ICU_GROUP_SHIFT = common dso_local global i32 0, align 4
@ICU_GRP_NSR = common dso_local global i32 0, align 4
@ICU_GRP_SEI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvebu_icu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_icu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mvebu_icu*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mvebu_icu* @devm_kzalloc(%struct.TYPE_5__* %10, i32 16, i32 %11)
  store %struct.mvebu_icu* %12, %struct.mvebu_icu** %4, align 8
  %13 = load %struct.mvebu_icu*, %struct.mvebu_icu** %4, align 8
  %14 = icmp ne %struct.mvebu_icu* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %105

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.mvebu_icu*, %struct.mvebu_icu** %4, align 8
  %22 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %21, i32 0, i32 1
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %5, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.resource*, %struct.resource** %5, align 8
  %29 = call i64 @devm_ioremap_resource(%struct.TYPE_5__* %27, %struct.resource* %28)
  %30 = load %struct.mvebu_icu*, %struct.mvebu_icu** %4, align 8
  %31 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.mvebu_icu*, %struct.mvebu_icu** %4, align 8
  %33 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @IS_ERR(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %18
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(%struct.TYPE_5__* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.mvebu_icu*, %struct.mvebu_icu** %4, align 8
  %42 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @PTR_ERR(i64 %43)
  store i32 %44, i32* %2, align 4
  br label %105

45:                                               ; preds = %18
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @of_get_child_count(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = call i32 @static_branch_enable(i32* @legacy_bindings)
  br label %54

54:                                               ; preds = %52, %45
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %89, %54
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @ICU_MAX_IRQS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %55
  %60 = load %struct.mvebu_icu*, %struct.mvebu_icu** %4, align 8
  %61 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @ICU_INT_CFG(i32 %63)
  %65 = add nsw i64 %62, %64
  %66 = call i32 @readl_relaxed(i64 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @ICU_GROUP_SHIFT, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ICU_GRP_NSR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @ICU_GRP_SEI, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = call i64 @static_branch_unlikely(i32* @legacy_bindings)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77, %59
  %81 = load %struct.mvebu_icu*, %struct.mvebu_icu** %4, align 8
  %82 = getelementptr inbounds %struct.mvebu_icu, %struct.mvebu_icu* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @ICU_INT_CFG(i32 %84)
  %86 = add nsw i64 %83, %85
  %87 = call i32 @writel_relaxed(i32 0, i64 %86)
  br label %88

88:                                               ; preds = %80, %77, %73
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %55

92:                                               ; preds = %55
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = load %struct.mvebu_icu*, %struct.mvebu_icu** %4, align 8
  %95 = call i32 @platform_set_drvdata(%struct.platform_device* %93, %struct.mvebu_icu* %94)
  %96 = call i64 @static_branch_unlikely(i32* @legacy_bindings)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = call i32 @mvebu_icu_subset_probe(%struct.platform_device* %99)
  store i32 %100, i32* %2, align 4
  br label %105

101:                                              ; preds = %92
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @devm_of_platform_populate(%struct.TYPE_5__* %103)
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %98, %37, %15
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.mvebu_icu* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @of_get_child_count(i32) #1

declare dso_local i32 @static_branch_enable(i32*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @ICU_INT_CFG(i32) #1

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mvebu_icu*) #1

declare dso_local i32 @mvebu_icu_subset_probe(%struct.platform_device*) #1

declare dso_local i32 @devm_of_platform_populate(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
