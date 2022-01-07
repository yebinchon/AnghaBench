; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls-scfg-msi.c_ls_scfg_msi_compose_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls-scfg-msi.c_ls_scfg_msi_compose_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.ls_scfg_msi = type { i32 }
%struct.cpumask = type { i32 }

@msi_affinity_flag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.msi_msg*)* @ls_scfg_msi_compose_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ls_scfg_msi_compose_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.ls_scfg_msi*, align 8
  %6 = alloca %struct.cpumask*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %8 = call %struct.ls_scfg_msi* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.ls_scfg_msi* %8, %struct.ls_scfg_msi** %5, align 8
  %9 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %10 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @upper_32_bits(i32 %11)
  %13 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %14 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %16 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @lower_32_bits(i32 %17)
  %19 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %20 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %22 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %25 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i64, i64* @msi_affinity_flag, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %30 = call %struct.cpumask* @irq_data_get_effective_affinity_mask(%struct.irq_data* %29)
  store %struct.cpumask* %30, %struct.cpumask** %6, align 8
  %31 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %32 = call i32 @cpumask_first(%struct.cpumask* %31)
  %33 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %34 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %28, %2
  %38 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %39 = call i32 @irq_data_get_msi_desc(%struct.irq_data* %38)
  %40 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %41 = call i32 @iommu_dma_compose_msi_msg(i32 %39, %struct.msi_msg* %40)
  ret void
}

declare dso_local %struct.ls_scfg_msi* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local %struct.cpumask* @irq_data_get_effective_affinity_mask(%struct.irq_data*) #1

declare dso_local i32 @cpumask_first(%struct.cpumask*) #1

declare dso_local i32 @iommu_dma_compose_msi_msg(i32, %struct.msi_msg*) #1

declare dso_local i32 @irq_data_get_msi_desc(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
