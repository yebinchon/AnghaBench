; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls-scfg-msi.c_ls_scfg_msi_domain_irq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls-scfg-msi.c_ls_scfg_msi_domain_irq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_data = type { i32 }
%struct.ls_scfg_msi = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"failed to teardown msi. Invalid hwirq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i32, i32)* @ls_scfg_msi_domain_irq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ls_scfg_msi_domain_irq_free(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_data*, align 8
  %8 = alloca %struct.ls_scfg_msi*, align 8
  %9 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %10, i32 %11)
  store %struct.irq_data* %12, %struct.irq_data** %7, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %14 = call %struct.ls_scfg_msi* @irq_data_get_irq_chip_data(%struct.irq_data* %13)
  store %struct.ls_scfg_msi* %14, %struct.ls_scfg_msi** %8, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %8, align 8
  %23 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %3
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %41

29:                                               ; preds = %20
  %30 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %8, align 8
  %31 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %30, i32 0, i32 1
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %8, align 8
  %35 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @__clear_bit(i32 %33, i32 %36)
  %38 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %8, align 8
  %39 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  br label %41

41:                                               ; preds = %29, %26
  ret void
}

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local %struct.ls_scfg_msi* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
