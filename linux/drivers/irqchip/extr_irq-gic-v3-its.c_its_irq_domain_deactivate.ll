; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_irq_domain_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_irq_domain_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_data = type { i32 }
%struct.its_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, %struct.irq_data*)* @its_irq_domain_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_irq_domain_deactivate(%struct.irq_domain* %0, %struct.irq_data* %1) #0 {
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.its_device*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %3, align 8
  store %struct.irq_data* %1, %struct.irq_data** %4, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %8 = call %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.its_device* %8, %struct.its_device** %5, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = call i32 @its_get_event_id(%struct.irq_data* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.its_device*, %struct.its_device** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @its_send_discard(%struct.its_device* %11, i32 %12)
  ret void
}

declare dso_local %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @its_get_event_id(%struct.irq_data*) #1

declare dso_local i32 @its_send_discard(%struct.its_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
