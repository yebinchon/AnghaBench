; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-icu.c_mvebu_icu_subset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-icu.c_mvebu_icu_subset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32, %struct.device* }
%struct.mvebu_icu_msi_data = type { i32*, i8* }
%struct.device_node = type { i32 }
%struct.irq_domain = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@legacy_bindings = common dso_local global i32 0, align 4
@mvebu_icu_nsr_subset_data = common dso_local global i32 0, align 4
@DOMAIN_BUS_PLATFORM_MSI = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ICU_MAX_IRQS = common dso_local global i32 0, align 4
@mvebu_icu_write_msg = common dso_local global i32 0, align 4
@mvebu_icu_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to create ICU MSI domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvebu_icu_subset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_icu_subset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mvebu_icu_msi_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.irq_domain*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mvebu_icu_msi_data* @devm_kzalloc(%struct.device* %10, i32 16, i32 %11)
  store %struct.mvebu_icu_msi_data* %12, %struct.mvebu_icu_msi_data** %4, align 8
  %13 = load %struct.mvebu_icu_msi_data*, %struct.mvebu_icu_msi_data** %4, align 8
  %14 = icmp ne %struct.mvebu_icu_msi_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %79

18:                                               ; preds = %1
  %19 = call i64 @static_branch_unlikely(i32* @legacy_bindings)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call i8* @dev_get_drvdata(%struct.device* %22)
  %24 = load %struct.mvebu_icu_msi_data*, %struct.mvebu_icu_msi_data** %4, align 8
  %25 = getelementptr inbounds %struct.mvebu_icu_msi_data, %struct.mvebu_icu_msi_data* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.mvebu_icu_msi_data*, %struct.mvebu_icu_msi_data** %4, align 8
  %27 = getelementptr inbounds %struct.mvebu_icu_msi_data, %struct.mvebu_icu_msi_data* %26, i32 0, i32 0
  store i32* @mvebu_icu_nsr_subset_data, i32** %27, align 8
  br label %39

28:                                               ; preds = %18
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 2
  %31 = load %struct.device*, %struct.device** %30, align 8
  %32 = call i8* @dev_get_drvdata(%struct.device* %31)
  %33 = load %struct.mvebu_icu_msi_data*, %struct.mvebu_icu_msi_data** %4, align 8
  %34 = getelementptr inbounds %struct.mvebu_icu_msi_data, %struct.mvebu_icu_msi_data* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i32* @of_device_get_match_data(%struct.device* %35)
  %37 = load %struct.mvebu_icu_msi_data*, %struct.mvebu_icu_msi_data** %4, align 8
  %38 = getelementptr inbounds %struct.mvebu_icu_msi_data, %struct.mvebu_icu_msi_data* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  br label %39

39:                                               ; preds = %28, %21
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DOMAIN_BUS_PLATFORM_MSI, align 4
  %45 = call i32 @of_msi_get_domain(%struct.device* %40, i32 %43, i32 %44)
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* @EPROBE_DEFER, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %79

55:                                               ; preds = %39
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.device_node* @irq_domain_get_of_node(i32 %58)
  store %struct.device_node* %59, %struct.device_node** %5, align 8
  %60 = load %struct.device_node*, %struct.device_node** %5, align 8
  %61 = icmp ne %struct.device_node* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %79

65:                                               ; preds = %55
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = load i32, i32* @ICU_MAX_IRQS, align 4
  %68 = load i32, i32* @mvebu_icu_write_msg, align 4
  %69 = load %struct.mvebu_icu_msi_data*, %struct.mvebu_icu_msi_data** %4, align 8
  %70 = call %struct.irq_domain* @platform_msi_create_device_tree_domain(%struct.device* %66, i32 %67, i32 %68, i32* @mvebu_icu_domain_ops, %struct.mvebu_icu_msi_data* %69)
  store %struct.irq_domain* %70, %struct.irq_domain** %7, align 8
  %71 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %72 = icmp ne %struct.irq_domain* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %65
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %79

78:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %73, %62, %52, %15
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.mvebu_icu_msi_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local i8* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @of_msi_get_domain(%struct.device*, i32, i32) #1

declare dso_local %struct.device_node* @irq_domain_get_of_node(i32) #1

declare dso_local %struct.irq_domain* @platform_msi_create_device_tree_domain(%struct.device*, i32, i32, i32*, %struct.mvebu_icu_msi_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
