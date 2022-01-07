; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mips-gic.c_gic_all_vpes_irq_cpu_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mips-gic.c_gic_all_vpes_irq_cpu_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gic_all_vpes_chip_data = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @gic_all_vpes_irq_cpu_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gic_all_vpes_irq_cpu_online(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gic_all_vpes_chip_data*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @GIC_HWIRQ_TO_LOCAL(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call %struct.gic_all_vpes_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.gic_all_vpes_chip_data* %10, %struct.gic_all_vpes_chip_data** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @mips_gic_vx_map_reg(i32 %11)
  %13 = load %struct.gic_all_vpes_chip_data*, %struct.gic_all_vpes_chip_data** %3, align 8
  %14 = getelementptr inbounds %struct.gic_all_vpes_chip_data, %struct.gic_all_vpes_chip_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @write_gic_vl_map(i32 %12, i32 %15)
  %17 = load %struct.gic_all_vpes_chip_data*, %struct.gic_all_vpes_chip_data** %3, align 8
  %18 = getelementptr inbounds %struct.gic_all_vpes_chip_data, %struct.gic_all_vpes_chip_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = call i32 @write_gic_vl_smask(i32 %23)
  br label %25

25:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @GIC_HWIRQ_TO_LOCAL(i32) #1

declare dso_local %struct.gic_all_vpes_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @write_gic_vl_map(i32, i32) #1

declare dso_local i32 @mips_gic_vx_map_reg(i32) #1

declare dso_local i32 @write_gic_vl_smask(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
