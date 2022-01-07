; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_receive_context_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_receive_context_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32 (%struct.hfi1_ctxtdata*, i32)*, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32* }

@RCV_PKT_LIMIT = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @receive_context_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hfi1_ctxtdata*, align 8
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.hfi1_ctxtdata*
  store %struct.hfi1_ctxtdata* %11, %struct.hfi1_ctxtdata** %6, align 8
  %12 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %13 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %12, i32 0, i32 1
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  store %struct.hfi1_devdata* %14, %struct.hfi1_devdata** %7, align 8
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %16 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %17 = call i32 @trace_hfi1_receive_interrupt(%struct.hfi1_devdata* %15, %struct.hfi1_ctxtdata* %16)
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %19 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @this_cpu_inc(i32 %21)
  %23 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %24 = call i32 @aspm_ctx_disable(%struct.hfi1_ctxtdata* %23)
  %25 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %26 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %25, i32 0, i32 0
  %27 = load i32 (%struct.hfi1_ctxtdata*, i32)*, i32 (%struct.hfi1_ctxtdata*, i32)** %26, align 8
  %28 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %29 = call i32 %27(%struct.hfi1_ctxtdata* %28, i32 0)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @RCV_PKT_LIMIT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %34, i32* %3, align 4
  br label %47

35:                                               ; preds = %2
  %36 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %37 = call i32 @clear_recv_intr(%struct.hfi1_ctxtdata* %36)
  %38 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %39 = call i32 @check_packet_present(%struct.hfi1_ctxtdata* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %44 = call i32 @force_recv_intr(%struct.hfi1_ctxtdata* %43)
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %33
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @trace_hfi1_receive_interrupt(%struct.hfi1_devdata*, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @aspm_ctx_disable(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @clear_recv_intr(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @check_packet_present(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @force_recv_intr(%struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
