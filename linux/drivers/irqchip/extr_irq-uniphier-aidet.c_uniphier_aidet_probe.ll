; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-uniphier-aidet.c_uniphier_aidet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-uniphier-aidet.c_uniphier_aidet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.irq_domain = type { i32 }
%struct.uniphier_aidet_priv = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UNIPHIER_AIDET_NR_IRQS = common dso_local global i32 0, align 4
@uniphier_aidet_domain_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_aidet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aidet_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.uniphier_aidet_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.device_node* @of_irq_find_parent(i32 %12)
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %78

19:                                               ; preds = %1
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %20)
  store %struct.irq_domain* %21, %struct.irq_domain** %6, align 8
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = call i32 @of_node_put(%struct.device_node* %22)
  %24 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %25 = icmp ne %struct.irq_domain* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %78

29:                                               ; preds = %19
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.uniphier_aidet_priv* @devm_kzalloc(%struct.device* %30, i32 12, i32 %31)
  store %struct.uniphier_aidet_priv* %32, %struct.uniphier_aidet_priv** %7, align 8
  %33 = load %struct.uniphier_aidet_priv*, %struct.uniphier_aidet_priv** %7, align 8
  %34 = icmp ne %struct.uniphier_aidet_priv* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %78

38:                                               ; preds = %29
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %39, i32 0)
  %41 = load %struct.uniphier_aidet_priv*, %struct.uniphier_aidet_priv** %7, align 8
  %42 = getelementptr inbounds %struct.uniphier_aidet_priv, %struct.uniphier_aidet_priv* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.uniphier_aidet_priv*, %struct.uniphier_aidet_priv** %7, align 8
  %44 = getelementptr inbounds %struct.uniphier_aidet_priv, %struct.uniphier_aidet_priv* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.uniphier_aidet_priv*, %struct.uniphier_aidet_priv** %7, align 8
  %50 = getelementptr inbounds %struct.uniphier_aidet_priv, %struct.uniphier_aidet_priv* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %78

53:                                               ; preds = %38
  %54 = load %struct.uniphier_aidet_priv*, %struct.uniphier_aidet_priv** %7, align 8
  %55 = getelementptr inbounds %struct.uniphier_aidet_priv, %struct.uniphier_aidet_priv* %54, i32 0, i32 1
  %56 = call i32 @spin_lock_init(i32* %55)
  %57 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %58 = load i32, i32* @UNIPHIER_AIDET_NR_IRQS, align 4
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @of_node_to_fwnode(i32 %61)
  %63 = load %struct.uniphier_aidet_priv*, %struct.uniphier_aidet_priv** %7, align 8
  %64 = call i32 @irq_domain_create_hierarchy(%struct.irq_domain* %57, i32 0, i32 %58, i32 %62, i32* @uniphier_aidet_domain_ops, %struct.uniphier_aidet_priv* %63)
  %65 = load %struct.uniphier_aidet_priv*, %struct.uniphier_aidet_priv** %7, align 8
  %66 = getelementptr inbounds %struct.uniphier_aidet_priv, %struct.uniphier_aidet_priv* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.uniphier_aidet_priv*, %struct.uniphier_aidet_priv** %7, align 8
  %68 = getelementptr inbounds %struct.uniphier_aidet_priv, %struct.uniphier_aidet_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %53
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %78

74:                                               ; preds = %53
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load %struct.uniphier_aidet_priv*, %struct.uniphier_aidet_priv** %7, align 8
  %77 = call i32 @platform_set_drvdata(%struct.platform_device* %75, %struct.uniphier_aidet_priv* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %71, %48, %35, %26, %16
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.device_node* @of_irq_find_parent(i32) #1

declare dso_local %struct.irq_domain* @irq_find_host(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.uniphier_aidet_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @irq_domain_create_hierarchy(%struct.irq_domain*, i32, i32, i32, i32*, %struct.uniphier_aidet_priv*) #1

declare dso_local i32 @of_node_to_fwnode(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uniphier_aidet_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
