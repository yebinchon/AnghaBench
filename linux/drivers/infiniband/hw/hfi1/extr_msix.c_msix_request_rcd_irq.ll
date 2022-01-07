; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_msix.c_msix_request_rcd_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_msix.c_msix_request_rcd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32, i32, i32, i32, i32 }

@receive_context_interrupt = common dso_local global i32 0, align 4
@receive_context_thread = common dso_local global i32 0, align 4
@IRQ_RCVCTXT = common dso_local global i32 0, align 4
@IS_RCVAVAIL_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msix_request_rcd_irq(%struct.hfi1_ctxtdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %3, align 8
  %5 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %6 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %9 = load i32, i32* @receive_context_interrupt, align 4
  %10 = load i32, i32* @receive_context_thread, align 4
  %11 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %12 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IRQ_RCVCTXT, align 4
  %15 = call i32 @msix_request_irq(i32 %7, %struct.hfi1_ctxtdata* %8, i32 %9, i32 %10, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load i32, i32* @IS_RCVAVAIL_START, align 4
  %22 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %23 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = sdiv i32 %25, 64
  %27 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %28 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @IS_RCVAVAIL_START, align 4
  %30 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %31 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = srem i32 %33, 64
  %35 = shl i32 1, %34
  %36 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %37 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %40 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %42 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IS_RCVAVAIL_START, align 4
  %45 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %46 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @remap_intr(i32 %43, i32 %48, i32 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %20, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @msix_request_irq(i32, %struct.hfi1_ctxtdata*, i32, i32, i32, i32) #1

declare dso_local i32 @remap_intr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
