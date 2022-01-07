; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-rza1.c_rza1_irqc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-rza1.c_rza1_irqc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.irq_domain = type { i32 }
%struct.rza1_irqc_priv = type { i32, %struct.TYPE_2__, i32, %struct.device* }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot find parent domain\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot parse %s: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"interrupt-map\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"rza1-irqc\00", align 1
@irq_chip_mask_parent = common dso_local global i32 0, align 4
@irq_chip_unmask_parent = common dso_local global i32 0, align 4
@rza1_irqc_eoi = common dso_local global i32 0, align 4
@irq_chip_retrigger_hierarchy = common dso_local global i32 0, align 4
@rza1_irqc_set_type = common dso_local global i32 0, align 4
@IRQCHIP_MASK_ON_SUSPEND = common dso_local global i32 0, align 4
@IRQCHIP_SKIP_SET_WAKE = common dso_local global i32 0, align 4
@IRQC_NUM_IRQ = common dso_local global i32 0, align 4
@rza1_irqc_domain_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"cannot initialize irq domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rza1_irqc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza1_irqc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.rza1_irqc_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  store %struct.irq_domain* null, %struct.irq_domain** %6, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.rza1_irqc_priv* @devm_kzalloc(%struct.device* %15, i32 56, i32 %16)
  store %struct.rza1_irqc_priv* %17, %struct.rza1_irqc_priv** %8, align 8
  %18 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %19 = icmp ne %struct.rza1_irqc_priv* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %121

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.rza1_irqc_priv* %25)
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %29 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %28, i32 0, i32 3
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %30, i32 0)
  %32 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %33 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %35 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %41 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %121

44:                                               ; preds = %23
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* %45)
  store %struct.device_node* %46, %struct.device_node** %7, align 8
  %47 = load %struct.device_node*, %struct.device_node** %7, align 8
  %48 = icmp ne %struct.device_node* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.device_node*, %struct.device_node** %7, align 8
  %51 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %50)
  store %struct.irq_domain* %51, %struct.irq_domain** %6, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %54 = icmp ne %struct.irq_domain* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %117

60:                                               ; preds = %52
  %61 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %62 = load %struct.device_node*, %struct.device_node** %7, align 8
  %63 = call i32 @rza1_irqc_parse_map(%struct.rza1_irqc_priv* %61, %struct.device_node* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %117

70:                                               ; preds = %60
  %71 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %72 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %73, align 8
  %74 = load i32, i32* @irq_chip_mask_parent, align 4
  %75 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %76 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 6
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @irq_chip_unmask_parent, align 4
  %79 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %80 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 5
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @rza1_irqc_eoi, align 4
  %83 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %84 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @irq_chip_retrigger_hierarchy, align 4
  %87 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %88 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @rza1_irqc_set_type, align 4
  %91 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %92 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @IRQCHIP_MASK_ON_SUSPEND, align 4
  %95 = load i32, i32* @IRQCHIP_SKIP_SET_WAKE, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %98 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 8
  %100 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %101 = load i32, i32* @IRQC_NUM_IRQ, align 4
  %102 = load %struct.device_node*, %struct.device_node** %5, align 8
  %103 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %104 = call i32 @irq_domain_add_hierarchy(%struct.irq_domain* %100, i32 0, i32 %101, %struct.device_node* %102, i32* @rza1_irqc_domain_ops, %struct.rza1_irqc_priv* %103)
  %105 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %106 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %8, align 8
  %108 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %70
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %111, %70
  br label %117

117:                                              ; preds = %116, %66, %55
  %118 = load %struct.device_node*, %struct.device_node** %7, align 8
  %119 = call i32 @of_node_put(%struct.device_node* %118)
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %117, %39, %20
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.rza1_irqc_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rza1_irqc_priv*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.device_node* @of_irq_find_parent(%struct.device_node*) #1

declare dso_local %struct.irq_domain* @irq_find_host(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @rza1_irqc_parse_map(%struct.rza1_irqc_priv*, %struct.device_node*) #1

declare dso_local i32 @irq_domain_add_hierarchy(%struct.irq_domain*, i32, i32, %struct.device_node*, i32*, %struct.rza1_irqc_priv*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
