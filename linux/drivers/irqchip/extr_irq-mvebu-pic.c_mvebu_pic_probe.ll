; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-pic.c_mvebu_pic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-pic.c_mvebu_pic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mvebu_pic = type { i64, i32, %struct.irq_chip, i32 }
%struct.irq_chip = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@mvebu_pic_mask_irq = common dso_local global i32 0, align 4
@mvebu_pic_unmask_irq = common dso_local global i32 0, align 4
@mvebu_pic_eoi_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to parse parent interrupt\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PIC_MAX_IRQS = common dso_local global i32 0, align 4
@mvebu_pic_domain_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to allocate irq domain\0A\00", align 1
@mvebu_pic_handle_cascade_irq = common dso_local global i32 0, align 4
@mvebu_pic_enable_percpu_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvebu_pic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_pic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mvebu_pic*, align 8
  %6 = alloca %struct.irq_chip*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mvebu_pic* @devm_kzalloc(%struct.TYPE_5__* %13, i32 32, i32 %14)
  store %struct.mvebu_pic* %15, %struct.mvebu_pic** %5, align 8
  %16 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %17 = icmp ne %struct.mvebu_pic* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %106

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %7, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.resource*, %struct.resource** %7, align 8
  %28 = call i32 @devm_ioremap_resource(%struct.TYPE_5__* %26, %struct.resource* %27)
  %29 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %30 = getelementptr inbounds %struct.mvebu_pic, %struct.mvebu_pic* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %32 = getelementptr inbounds %struct.mvebu_pic, %struct.mvebu_pic* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %38 = getelementptr inbounds %struct.mvebu_pic, %struct.mvebu_pic* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %106

41:                                               ; preds = %21
  %42 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %43 = getelementptr inbounds %struct.mvebu_pic, %struct.mvebu_pic* %42, i32 0, i32 2
  store %struct.irq_chip* %43, %struct.irq_chip** %6, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_name(%struct.TYPE_5__* %45)
  %47 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %48 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @mvebu_pic_mask_irq, align 4
  %50 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %51 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @mvebu_pic_unmask_irq, align 4
  %53 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %54 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @mvebu_pic_eoi_irq, align 4
  %56 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %57 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.device_node*, %struct.device_node** %4, align 8
  %59 = call i64 @irq_of_parse_and_map(%struct.device_node* %58, i32 0)
  %60 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %61 = getelementptr inbounds %struct.mvebu_pic, %struct.mvebu_pic* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %63 = getelementptr inbounds %struct.mvebu_pic, %struct.mvebu_pic* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %41
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_err(%struct.TYPE_5__* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %106

72:                                               ; preds = %41
  %73 = load %struct.device_node*, %struct.device_node** %4, align 8
  %74 = load i32, i32* @PIC_MAX_IRQS, align 4
  %75 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %76 = call i32 @irq_domain_add_linear(%struct.device_node* %73, i32 %74, i32* @mvebu_pic_domain_ops, %struct.mvebu_pic* %75)
  %77 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %78 = getelementptr inbounds %struct.mvebu_pic, %struct.mvebu_pic* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %80 = getelementptr inbounds %struct.mvebu_pic, %struct.mvebu_pic* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %72
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_err(%struct.TYPE_5__* %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %106

89:                                               ; preds = %72
  %90 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %91 = getelementptr inbounds %struct.mvebu_pic, %struct.mvebu_pic* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @mvebu_pic_handle_cascade_irq, align 4
  %94 = call i32 @irq_set_chained_handler(i64 %92, i32 %93)
  %95 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %96 = getelementptr inbounds %struct.mvebu_pic, %struct.mvebu_pic* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %99 = call i32 @irq_set_handler_data(i64 %97, %struct.mvebu_pic* %98)
  %100 = load i32, i32* @mvebu_pic_enable_percpu_irq, align 4
  %101 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %102 = call i32 @on_each_cpu(i32 %100, %struct.mvebu_pic* %101, i32 1)
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = load %struct.mvebu_pic*, %struct.mvebu_pic** %5, align 8
  %105 = call i32 @platform_set_drvdata(%struct.platform_device* %103, %struct.mvebu_pic* %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %89, %83, %66, %36, %18
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.mvebu_pic* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_5__*) #1

declare dso_local i64 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.mvebu_pic*) #1

declare dso_local i32 @irq_set_chained_handler(i64, i32) #1

declare dso_local i32 @irq_set_handler_data(i64, %struct.mvebu_pic*) #1

declare dso_local i32 @on_each_cpu(i32, %struct.mvebu_pic*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mvebu_pic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
