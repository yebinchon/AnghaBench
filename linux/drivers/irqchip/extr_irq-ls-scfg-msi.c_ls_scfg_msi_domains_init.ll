; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls-scfg-msi.c_ls_scfg_msi_domains_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls-scfg-msi.c_ls_scfg_msi_domains_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ls_scfg_msi = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ls_scfg_msi_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ls_scfg_msi_domain_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to create MSI domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ls_scfg_msi*)* @ls_scfg_msi_domains_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls_scfg_msi_domains_init(%struct.ls_scfg_msi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ls_scfg_msi*, align 8
  store %struct.ls_scfg_msi* %0, %struct.ls_scfg_msi** %3, align 8
  %4 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %3, align 8
  %5 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %3, align 8
  %8 = call i32 @irq_domain_add_linear(i32* null, i32 %6, i32* @ls_scfg_msi_domain_ops, %struct.ls_scfg_msi* %7)
  %9 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %3, align 8
  %10 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %3, align 8
  %12 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %3, align 8
  %17 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_4__* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %3, align 8
  %25 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @of_node_to_fwnode(i32 %29)
  %31 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %3, align 8
  %32 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pci_msi_create_irq_domain(i32 %30, i32* @ls_scfg_msi_domain_info, i32 %33)
  %35 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %3, align 8
  %36 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %3, align 8
  %38 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %23
  %42 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %3, align 8
  %43 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @dev_err(%struct.TYPE_4__* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %3, align 8
  %48 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @irq_domain_remove(i32 %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %41, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @irq_domain_add_linear(i32*, i32, i32*, %struct.ls_scfg_msi*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @pci_msi_create_irq_domain(i32, i32*, i32) #1

declare dso_local i32 @of_node_to_fwnode(i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
