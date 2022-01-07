; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ts4800.c_ts4800_ic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ts4800.c_ts4800_ic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ts4800_irq_data = type { i32, %struct.irq_chip, i64 }
%struct.irq_chip = type { i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IRQ_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"failed to get parent IRQ\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ts4800_irq_mask = common dso_local global i32 0, align 4
@ts4800_irq_unmask = common dso_local global i32 0, align 4
@ts4800_ic_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot add IRQ domain\0A\00", align 1
@ts4800_ic_chained_handle_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ts4800_ic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts4800_ic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.ts4800_irq_data*, align 8
  %6 = alloca %struct.irq_chip*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ts4800_irq_data* @devm_kzalloc(%struct.TYPE_5__* %14, i32 24, i32 %15)
  store %struct.ts4800_irq_data* %16, %struct.ts4800_irq_data** %5, align 8
  %17 = load %struct.ts4800_irq_data*, %struct.ts4800_irq_data** %5, align 8
  %18 = icmp ne %struct.ts4800_irq_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %96

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %7, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.resource*, %struct.resource** %7, align 8
  %29 = call i64 @devm_ioremap_resource(%struct.TYPE_5__* %27, %struct.resource* %28)
  %30 = load %struct.ts4800_irq_data*, %struct.ts4800_irq_data** %5, align 8
  %31 = getelementptr inbounds %struct.ts4800_irq_data, %struct.ts4800_irq_data* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.ts4800_irq_data*, %struct.ts4800_irq_data** %5, align 8
  %33 = getelementptr inbounds %struct.ts4800_irq_data, %struct.ts4800_irq_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @IS_ERR(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load %struct.ts4800_irq_data*, %struct.ts4800_irq_data** %5, align 8
  %39 = getelementptr inbounds %struct.ts4800_irq_data, %struct.ts4800_irq_data* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @PTR_ERR(i64 %40)
  store i32 %41, i32* %2, align 4
  br label %96

42:                                               ; preds = %22
  %43 = load %struct.ts4800_irq_data*, %struct.ts4800_irq_data** %5, align 8
  %44 = getelementptr inbounds %struct.ts4800_irq_data, %struct.ts4800_irq_data* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IRQ_MASK, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writew(i32 65535, i64 %47)
  %49 = load %struct.device_node*, %struct.device_node** %4, align 8
  %50 = call i32 @irq_of_parse_and_map(%struct.device_node* %49, i32 0)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %42
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_err(%struct.TYPE_5__* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %96

59:                                               ; preds = %42
  %60 = load %struct.ts4800_irq_data*, %struct.ts4800_irq_data** %5, align 8
  %61 = getelementptr inbounds %struct.ts4800_irq_data, %struct.ts4800_irq_data* %60, i32 0, i32 1
  store %struct.irq_chip* %61, %struct.irq_chip** %6, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_name(%struct.TYPE_5__* %63)
  %65 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %66 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @ts4800_irq_mask, align 4
  %68 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %69 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @ts4800_irq_unmask, align 4
  %71 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %72 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.device_node*, %struct.device_node** %4, align 8
  %74 = load %struct.ts4800_irq_data*, %struct.ts4800_irq_data** %5, align 8
  %75 = call i32 @irq_domain_add_linear(%struct.device_node* %73, i32 8, i32* @ts4800_ic_ops, %struct.ts4800_irq_data* %74)
  %76 = load %struct.ts4800_irq_data*, %struct.ts4800_irq_data** %5, align 8
  %77 = getelementptr inbounds %struct.ts4800_irq_data, %struct.ts4800_irq_data* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ts4800_irq_data*, %struct.ts4800_irq_data** %5, align 8
  %79 = getelementptr inbounds %struct.ts4800_irq_data, %struct.ts4800_irq_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %59
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_err(%struct.TYPE_5__* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %96

88:                                               ; preds = %59
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @ts4800_ic_chained_handle_irq, align 4
  %91 = load %struct.ts4800_irq_data*, %struct.ts4800_irq_data** %5, align 8
  %92 = call i32 @irq_set_chained_handler_and_data(i32 %89, i32 %90, %struct.ts4800_irq_data* %91)
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = load %struct.ts4800_irq_data*, %struct.ts4800_irq_data** %5, align 8
  %95 = call i32 @platform_set_drvdata(%struct.platform_device* %93, %struct.ts4800_irq_data* %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %88, %82, %53, %37, %19
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.ts4800_irq_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @dev_name(%struct.TYPE_5__*) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.ts4800_irq_data*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.ts4800_irq_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ts4800_irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
