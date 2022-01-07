; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-inta.c_ti_sci_inta_request_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-inta.c_ti_sci_inta_request_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.ti_sci_inta_event_desc*, i32, i32 }
%struct.ti_sci_inta_event_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @ti_sci_inta_request_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_inta_request_resources(%struct.irq_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.ti_sci_inta_event_desc*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.ti_sci_inta_event_desc* @ti_sci_inta_alloc_irq(i32 %7, i32 %10)
  store %struct.ti_sci_inta_event_desc* %11, %struct.ti_sci_inta_event_desc** %4, align 8
  %12 = load %struct.ti_sci_inta_event_desc*, %struct.ti_sci_inta_event_desc** %4, align 8
  %13 = call i64 @IS_ERR(%struct.ti_sci_inta_event_desc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.ti_sci_inta_event_desc*, %struct.ti_sci_inta_event_desc** %4, align 8
  %17 = call i32 @PTR_ERR(%struct.ti_sci_inta_event_desc* %16)
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.ti_sci_inta_event_desc*, %struct.ti_sci_inta_event_desc** %4, align 8
  %20 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %21 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %20, i32 0, i32 0
  store %struct.ti_sci_inta_event_desc* %19, %struct.ti_sci_inta_event_desc** %21, align 8
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.ti_sci_inta_event_desc* @ti_sci_inta_alloc_irq(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ti_sci_inta_event_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_inta_event_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
