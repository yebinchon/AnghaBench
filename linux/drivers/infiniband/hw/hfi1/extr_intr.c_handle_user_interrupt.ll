; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_intr.c_handle_user_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_intr.c_handle_user_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32, i32, i32, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@HFI1_MAX_SHARED_CTXTS = common dso_local global i32 0, align 4
@HFI1_CTXT_WAITING_RCV = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_INTRAVAIL_DIS = common dso_local global i32 0, align 4
@HFI1_CTXT_WAITING_URG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_user_interrupt(%struct.hfi1_ctxtdata* %0) #0 {
  %2 = alloca %struct.hfi1_ctxtdata*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i64, align 8
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %2, align 8
  %5 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %5, i32 0, i32 4
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  store %struct.hfi1_devdata* %7, %struct.hfi1_devdata** %3, align 8
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %9 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %13 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HFI1_MAX_SHARED_CTXTS, align 4
  %16 = call i64 @bitmap_empty(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %49

19:                                               ; preds = %1
  %20 = load i32, i32* @HFI1_CTXT_WAITING_RCV, align 4
  %21 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %22 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %21, i32 0, i32 2
  %23 = call i64 @test_and_clear_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %27 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %26, i32 0, i32 0
  %28 = call i32 @wake_up_interruptible(i32* %27)
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %30 = load i32, i32* @HFI1_RCVCTRL_INTRAVAIL_DIS, align 4
  %31 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %32 = call i32 @hfi1_rcvctrl(%struct.hfi1_devdata* %29, i32 %30, %struct.hfi1_ctxtdata* %31)
  br label %48

33:                                               ; preds = %19
  %34 = load i32, i32* @HFI1_CTXT_WAITING_URG, align 4
  %35 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %36 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %35, i32 0, i32 2
  %37 = call i64 @test_and_clear_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %41 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %45 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %44, i32 0, i32 0
  %46 = call i32 @wake_up_interruptible(i32* %45)
  br label %47

47:                                               ; preds = %39, %33
  br label %48

48:                                               ; preds = %47, %25
  br label %49

49:                                               ; preds = %48, %18
  %50 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %51 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %50, i32 0, i32 0
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bitmap_empty(i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @hfi1_rcvctrl(%struct.hfi1_devdata*, i32, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
