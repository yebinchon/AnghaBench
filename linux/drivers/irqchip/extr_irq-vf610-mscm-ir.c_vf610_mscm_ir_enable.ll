; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-vf610-mscm-ir.c_vf610_mscm_ir_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-vf610-mscm-ir.c_vf610_mscm_ir_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.vf610_mscm_ir_chip_data*, i32 }
%struct.vf610_mscm_ir_chip_data = type { i32, i64 }

@MSCM_IRSPRC_CPEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @vf610_mscm_ir_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf610_mscm_ir_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vf610_mscm_ir_chip_data*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load %struct.vf610_mscm_ir_chip_data*, %struct.vf610_mscm_ir_chip_data** %10, align 8
  store %struct.vf610_mscm_ir_chip_data* %11, %struct.vf610_mscm_ir_chip_data** %4, align 8
  %12 = load %struct.vf610_mscm_ir_chip_data*, %struct.vf610_mscm_ir_chip_data** %4, align 8
  %13 = getelementptr inbounds %struct.vf610_mscm_ir_chip_data, %struct.vf610_mscm_ir_chip_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @MSCM_IRSPRC(i32 %15)
  %17 = add nsw i64 %14, %16
  %18 = call i32 @readw_relaxed(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @MSCM_IRSPRC_CPEN_MASK, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.vf610_mscm_ir_chip_data*, %struct.vf610_mscm_ir_chip_data** %4, align 8
  %24 = getelementptr inbounds %struct.vf610_mscm_ir_chip_data, %struct.vf610_mscm_ir_chip_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = xor i32 %25, -1
  %27 = and i32 %22, %26
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.vf610_mscm_ir_chip_data*, %struct.vf610_mscm_ir_chip_data** %4, align 8
  %30 = getelementptr inbounds %struct.vf610_mscm_ir_chip_data, %struct.vf610_mscm_ir_chip_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vf610_mscm_ir_chip_data*, %struct.vf610_mscm_ir_chip_data** %4, align 8
  %33 = getelementptr inbounds %struct.vf610_mscm_ir_chip_data, %struct.vf610_mscm_ir_chip_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @MSCM_IRSPRC(i32 %35)
  %37 = add nsw i64 %34, %36
  %38 = call i32 @writew_relaxed(i32 %31, i64 %37)
  %39 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %40 = call i32 @irq_chip_enable_parent(%struct.irq_data* %39)
  ret void
}

declare dso_local i32 @readw_relaxed(i64) #1

declare dso_local i64 @MSCM_IRSPRC(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @writew_relaxed(i32, i64) #1

declare dso_local i32 @irq_chip_enable_parent(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
