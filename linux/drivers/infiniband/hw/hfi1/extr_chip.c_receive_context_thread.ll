; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_receive_context_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_receive_context_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32 (%struct.hfi1_ctxtdata*, i32)* }

@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @receive_context_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hfi1_ctxtdata*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.hfi1_ctxtdata*
  store %struct.hfi1_ctxtdata* %8, %struct.hfi1_ctxtdata** %5, align 8
  %9 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %10 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %9, i32 0, i32 0
  %11 = load i32 (%struct.hfi1_ctxtdata*, i32)*, i32 (%struct.hfi1_ctxtdata*, i32)** %10, align 8
  %12 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %13 = call i32 %11(%struct.hfi1_ctxtdata* %12, i32 1)
  %14 = call i32 (...) @local_irq_disable()
  %15 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %16 = call i32 @clear_recv_intr(%struct.hfi1_ctxtdata* %15)
  %17 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %18 = call i32 @check_packet_present(%struct.hfi1_ctxtdata* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %23 = call i32 @force_recv_intr(%struct.hfi1_ctxtdata* %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = call i32 (...) @local_irq_enable()
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %26
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @clear_recv_intr(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @check_packet_present(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @force_recv_intr(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
