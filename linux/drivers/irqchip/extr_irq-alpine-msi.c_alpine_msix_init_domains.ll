; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-alpine-msi.c_alpine_msix_init_domains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-alpine-msi.c_alpine_msix_init_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpine_msix_data = type { i32 }
%struct.device_node = type { i32 }
%struct.irq_domain = type { %struct.irq_domain* }

@.str = private unnamed_addr constant [29 x i8] c"Failed to find the GIC node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to find the GIC domain\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@alpine_msix_middle_domain_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to create the MSIX middle domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@alpine_msix_domain_info = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to create MSI domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alpine_msix_data*, %struct.device_node*)* @alpine_msix_init_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpine_msix_init_domains(%struct.alpine_msix_data* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alpine_msix_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_domain*, align 8
  %8 = alloca %struct.irq_domain*, align 8
  %9 = alloca %struct.device_node*, align 8
  store %struct.alpine_msix_data* %0, %struct.alpine_msix_data** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* %10)
  store %struct.device_node* %11, %struct.device_node** %9, align 8
  %12 = load %struct.device_node*, %struct.device_node** %9, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.device_node*, %struct.device_node** %9, align 8
  %20 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %19)
  store %struct.irq_domain* %20, %struct.irq_domain** %8, align 8
  %21 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %22 = icmp ne %struct.irq_domain* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %53

27:                                               ; preds = %18
  %28 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %4, align 8
  %29 = call %struct.irq_domain* @irq_domain_add_tree(i32* null, i32* @alpine_msix_middle_domain_ops, %struct.alpine_msix_data* %28)
  store %struct.irq_domain* %29, %struct.irq_domain** %6, align 8
  %30 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %31 = icmp ne %struct.irq_domain* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %53

36:                                               ; preds = %27
  %37 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %38 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %39 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %38, i32 0, i32 0
  store %struct.irq_domain* %37, %struct.irq_domain** %39, align 8
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = call i32 @of_node_to_fwnode(%struct.device_node* %40)
  %42 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %43 = call %struct.irq_domain* @pci_msi_create_irq_domain(i32 %41, i32* @alpine_msix_domain_info, %struct.irq_domain* %42)
  store %struct.irq_domain* %43, %struct.irq_domain** %7, align 8
  %44 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %45 = icmp ne %struct.irq_domain* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %36
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %49 = call i32 @irq_domain_remove(%struct.irq_domain* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %46, %32, %23, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.device_node* @of_irq_find_parent(%struct.device_node*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.irq_domain* @irq_find_host(%struct.device_node*) #1

declare dso_local %struct.irq_domain* @irq_domain_add_tree(i32*, i32*, %struct.alpine_msix_data*) #1

declare dso_local %struct.irq_domain* @pci_msi_create_irq_domain(i32, i32*, %struct.irq_domain*) #1

declare dso_local i32 @of_node_to_fwnode(%struct.device_node*) #1

declare dso_local i32 @irq_domain_remove(%struct.irq_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
