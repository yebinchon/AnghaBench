; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-icu.c_mvebu_icu_irq_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-icu.c_mvebu_icu_irq_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_data = type { %struct.mvebu_icu_irq_data* }
%struct.mvebu_icu_irq_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i32, i32)* @mvebu_icu_irq_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_icu_irq_domain_free(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_data*, align 8
  %8 = alloca %struct.mvebu_icu_irq_data*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.irq_data* @irq_get_irq_data(i32 %9)
  store %struct.irq_data* %10, %struct.irq_data** %7, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load %struct.mvebu_icu_irq_data*, %struct.mvebu_icu_irq_data** %12, align 8
  store %struct.mvebu_icu_irq_data* %13, %struct.mvebu_icu_irq_data** %8, align 8
  %14 = load %struct.mvebu_icu_irq_data*, %struct.mvebu_icu_irq_data** %8, align 8
  %15 = call i32 @kfree(%struct.mvebu_icu_irq_data* %14)
  %16 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @platform_msi_domain_free(%struct.irq_domain* %16, i32 %17, i32 %18)
  ret void
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @kfree(%struct.mvebu_icu_irq_data*) #1

declare dso_local i32 @platform_msi_domain_free(%struct.irq_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
