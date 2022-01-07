; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-inta.c_ti_sci_inta_free_parent_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-inta.c_ti_sci_inta_free_parent_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_inta_irq_domain = type { i32 }
%struct.ti_sci_inta_vint_desc = type { i32, i32, i32, i32 }

@MAX_EVENTS_PER_VINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_vint_desc*)* @ti_sci_inta_free_parent_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sci_inta_free_parent_irq(%struct.ti_sci_inta_irq_domain* %0, %struct.ti_sci_inta_vint_desc* %1) #0 {
  %3 = alloca %struct.ti_sci_inta_irq_domain*, align 8
  %4 = alloca %struct.ti_sci_inta_vint_desc*, align 8
  store %struct.ti_sci_inta_irq_domain* %0, %struct.ti_sci_inta_irq_domain** %3, align 8
  store %struct.ti_sci_inta_vint_desc* %1, %struct.ti_sci_inta_vint_desc** %4, align 8
  %5 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %4, align 8
  %6 = getelementptr inbounds %struct.ti_sci_inta_vint_desc, %struct.ti_sci_inta_vint_desc* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load i64, i64* @MAX_EVENTS_PER_VINT, align 8
  %9 = call i64 @find_first_bit(i32 %7, i64 %8)
  %10 = load i64, i64* @MAX_EVENTS_PER_VINT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %4, align 8
  %14 = getelementptr inbounds %struct.ti_sci_inta_vint_desc, %struct.ti_sci_inta_vint_desc* %13, i32 0, i32 2
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %3, align 8
  %17 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %4, align 8
  %20 = getelementptr inbounds %struct.ti_sci_inta_vint_desc, %struct.ti_sci_inta_vint_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ti_sci_release_resource(i32 %18, i32 %21)
  %23 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %4, align 8
  %24 = getelementptr inbounds %struct.ti_sci_inta_vint_desc, %struct.ti_sci_inta_vint_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @irq_dispose_mapping(i32 %25)
  %27 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %4, align 8
  %28 = call i32 @kfree(%struct.ti_sci_inta_vint_desc* %27)
  br label %29

29:                                               ; preds = %12, %2
  ret void
}

declare dso_local i64 @find_first_bit(i32, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ti_sci_release_resource(i32, i32) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @kfree(%struct.ti_sci_inta_vint_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
