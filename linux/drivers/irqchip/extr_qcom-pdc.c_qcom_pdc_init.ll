; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_qcom-pdc.c_qcom_pdc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_qcom-pdc.c_qcom_pdc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.irq_domain = type { i32 }

@pdc_base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%pOF: unable to map PDC registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%pOF: unable to find PDC's parent domain\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%pOF: failed to init PDC pin-hwirq mapping\0A\00", align 1
@PDC_MAX_IRQS = common dso_local global i32 0, align 4
@qcom_pdc_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%pOF: GIC domain add failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@pdc_region = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.device_node*)* @qcom_pdc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_pdc_init(%struct.device_node* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_domain*, align 8
  %8 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = call i32 @of_iomap(%struct.device_node* %9, i32 0)
  store i32 %10, i32* @pdc_base, align 4
  %11 = load i32, i32* @pdc_base, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.device_node* %14)
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %2
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %19)
  store %struct.irq_domain* %20, %struct.irq_domain** %6, align 8
  %21 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %22 = icmp ne %struct.irq_domain* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %24)
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %50

28:                                               ; preds = %18
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call i32 @pdc_setup_pin_mapping(%struct.device_node* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.device_node*, %struct.device_node** %4, align 8
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %34)
  br label %50

36:                                               ; preds = %28
  %37 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %38 = load i32, i32* @PDC_MAX_IRQS, align 4
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = call i32 @of_fwnode_handle(%struct.device_node* %39)
  %41 = call %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain* %37, i32 0, i32 %38, i32 %40, i32* @qcom_pdc_ops, i32* null)
  store %struct.irq_domain* %41, %struct.irq_domain** %7, align 8
  %42 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %43 = icmp ne %struct.irq_domain* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load %struct.device_node*, %struct.device_node** %4, align 8
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %50

49:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %56

50:                                               ; preds = %44, %33, %23
  %51 = load i32, i32* @pdc_region, align 4
  %52 = call i32 @kfree(i32 %51)
  %53 = load i32, i32* @pdc_base, align 4
  %54 = call i32 @iounmap(i32 %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %49, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*) #1

declare dso_local %struct.irq_domain* @irq_find_host(%struct.device_node*) #1

declare dso_local i32 @pdc_setup_pin_mapping(%struct.device_node*) #1

declare dso_local %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
