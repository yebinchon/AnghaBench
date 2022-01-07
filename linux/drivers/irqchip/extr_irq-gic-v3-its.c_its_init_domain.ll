; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_init_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_init_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.its_node = type { i32 }
%struct.irq_domain = type { %struct.msi_domain_info*, i32, i32 }
%struct.msi_domain_info = type { %struct.its_node*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@its_domain_ops = common dso_local global i32 0, align 4
@its_parent = common dso_local global i32 0, align 4
@DOMAIN_BUS_NEXUS = common dso_local global i32 0, align 4
@its_msi_domain_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwnode_handle*, %struct.its_node*)* @its_init_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_init_domain(%struct.fwnode_handle* %0, %struct.its_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.its_node*, align 8
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.msi_domain_info*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %4, align 8
  store %struct.its_node* %1, %struct.its_node** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.msi_domain_info* @kzalloc(i32 16, i32 %8)
  store %struct.msi_domain_info* %9, %struct.msi_domain_info** %7, align 8
  %10 = load %struct.msi_domain_info*, %struct.msi_domain_info** %7, align 8
  %11 = icmp ne %struct.msi_domain_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %17 = load %struct.its_node*, %struct.its_node** %5, align 8
  %18 = call %struct.irq_domain* @irq_domain_create_tree(%struct.fwnode_handle* %16, i32* @its_domain_ops, %struct.its_node* %17)
  store %struct.irq_domain* %18, %struct.irq_domain** %6, align 8
  %19 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %20 = icmp ne %struct.irq_domain* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.msi_domain_info*, %struct.msi_domain_info** %7, align 8
  %23 = call i32 @kfree(%struct.msi_domain_info* %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %48

26:                                               ; preds = %15
  %27 = load i32, i32* @its_parent, align 4
  %28 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %29 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %31 = load i32, i32* @DOMAIN_BUS_NEXUS, align 4
  %32 = call i32 @irq_domain_update_bus_token(%struct.irq_domain* %30, i32 %31)
  %33 = load %struct.its_node*, %struct.its_node** %5, align 8
  %34 = getelementptr inbounds %struct.its_node, %struct.its_node* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %37 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.msi_domain_info*, %struct.msi_domain_info** %7, align 8
  %41 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %40, i32 0, i32 1
  store i32* @its_msi_domain_ops, i32** %41, align 8
  %42 = load %struct.its_node*, %struct.its_node** %5, align 8
  %43 = load %struct.msi_domain_info*, %struct.msi_domain_info** %7, align 8
  %44 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %43, i32 0, i32 0
  store %struct.its_node* %42, %struct.its_node** %44, align 8
  %45 = load %struct.msi_domain_info*, %struct.msi_domain_info** %7, align 8
  %46 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %47 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %46, i32 0, i32 0
  store %struct.msi_domain_info* %45, %struct.msi_domain_info** %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %26, %21, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.msi_domain_info* @kzalloc(i32, i32) #1

declare dso_local %struct.irq_domain* @irq_domain_create_tree(%struct.fwnode_handle*, i32*, %struct.its_node*) #1

declare dso_local i32 @kfree(%struct.msi_domain_info*) #1

declare dso_local i32 @irq_domain_update_bus_token(%struct.irq_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
