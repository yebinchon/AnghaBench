; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-st.c_st_irq_syscfg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-st.c_st_irq_syscfg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i64 }
%struct.st_irq_syscfg = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@st_irq_syscfg_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"syscfg phandle missing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_irq_syscfg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_irq_syscfg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.st_irq_syscfg*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.st_irq_syscfg* @devm_kzalloc(%struct.TYPE_5__* %12, i32 8, i32 %13)
  store %struct.st_irq_syscfg* %14, %struct.st_irq_syscfg** %6, align 8
  %15 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %6, align 8
  %16 = icmp ne %struct.st_irq_syscfg* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %61

20:                                               ; preds = %1
  %21 = load i32, i32* @st_irq_syscfg_match, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call %struct.of_device_id* @of_match_device(i32 %21, %struct.TYPE_5__* %23)
  store %struct.of_device_id* %24, %struct.of_device_id** %5, align 8
  %25 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %26 = icmp ne %struct.of_device_id* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %61

30:                                               ; preds = %20
  %31 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %6, align 8
  %36 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.device_node*, %struct.device_node** %4, align 8
  %38 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %6, align 8
  %40 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %6, align 8
  %42 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %30
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @dev_err(%struct.TYPE_5__* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %6, align 8
  %51 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %61

54:                                               ; preds = %30
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %6, align 8
  %58 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %56, %struct.st_irq_syscfg* %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = call i32 @st_irq_syscfg_enable(%struct.platform_device* %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %54, %46, %27, %17
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.st_irq_syscfg* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_5__*, %struct.st_irq_syscfg*) #1

declare dso_local i32 @st_irq_syscfg_enable(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
