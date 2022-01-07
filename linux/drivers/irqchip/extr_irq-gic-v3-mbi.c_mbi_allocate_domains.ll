; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-mbi.c_mbi_allocate_domains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-mbi.c_mbi_allocate_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32, %struct.irq_domain* }

@mbi_domain_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DOMAIN_BUS_NEXUS = common dso_local global i32 0, align 4
@mbi_pmsi_domain_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*)* @mbi_allocate_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbi_allocate_domains(%struct.irq_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %3, align 8
  %8 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %9 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.irq_domain* @irq_domain_create_tree(i32 %10, i32* @mbi_domain_ops, i32* null)
  store %struct.irq_domain* %11, %struct.irq_domain** %4, align 8
  %12 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %13 = icmp ne %struct.irq_domain* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %54

17:                                               ; preds = %1
  %18 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %19 = load i32, i32* @DOMAIN_BUS_NEXUS, align 4
  %20 = call i32 @irq_domain_update_bus_token(%struct.irq_domain* %18, i32 %19)
  %21 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %22 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %23 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %22, i32 0, i32 1
  store %struct.irq_domain* %21, %struct.irq_domain** %23, align 8
  %24 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %25 = call i32 @mbi_allocate_pci_domain(%struct.irq_domain* %24, %struct.irq_domain** %5)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %27 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %30 = call %struct.irq_domain* @platform_msi_create_irq_domain(i32 %28, i32* @mbi_pmsi_domain_info, %struct.irq_domain* %29)
  store %struct.irq_domain* %30, %struct.irq_domain** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %17
  %34 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %35 = icmp ne %struct.irq_domain* %34, null
  br i1 %35, label %53, label %36

36:                                               ; preds = %33, %17
  %37 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %38 = icmp ne %struct.irq_domain* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %41 = call i32 @irq_domain_remove(%struct.irq_domain* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %44 = icmp ne %struct.irq_domain* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %47 = call i32 @irq_domain_remove(%struct.irq_domain* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %50 = call i32 @irq_domain_remove(%struct.irq_domain* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %48, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.irq_domain* @irq_domain_create_tree(i32, i32*, i32*) #1

declare dso_local i32 @irq_domain_update_bus_token(%struct.irq_domain*, i32) #1

declare dso_local i32 @mbi_allocate_pci_domain(%struct.irq_domain*, %struct.irq_domain**) #1

declare dso_local %struct.irq_domain* @platform_msi_create_irq_domain(i32, i32*, %struct.irq_domain*) #1

declare dso_local i32 @irq_domain_remove(%struct.irq_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
