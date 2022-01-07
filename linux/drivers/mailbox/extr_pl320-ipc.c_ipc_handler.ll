; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_pl320-ipc.c_ipc_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_pl320-ipc.c_ipc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ipc_base = common dso_local global i64 0, align 8
@IPC_TX_MBOX = common dso_local global i32 0, align 4
@ipc_completion = common dso_local global i32 0, align 4
@IPC_RX_MBOX = common dso_local global i32 0, align 4
@ipc_notifier = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ipc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [7 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* @ipc_base, align 8
  %8 = call i64 @IPCMMIS(i32 1)
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl_relaxed(i64 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IPC_TX_MBOX, align 4
  %13 = call i32 @MBOX_MASK(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i64, i64* @ipc_base, align 8
  %18 = load i32, i32* @IPC_TX_MBOX, align 4
  %19 = call i64 @IPCMxSEND(i32 %18)
  %20 = add nsw i64 %17, %19
  %21 = call i32 @writel_relaxed(i32 0, i64 %20)
  %22 = call i32 @complete(i32* @ipc_completion)
  br label %23

23:                                               ; preds = %16, %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @IPC_RX_MBOX, align 4
  %26 = call i32 @MBOX_MASK(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load i32, i32* @IPC_RX_MBOX, align 4
  %31 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %32 = call i32 @__ipc_rcv(i32 %30, i32* %31)
  %33 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = call i32 @atomic_notifier_call_chain(i32* @ipc_notifier, i32 %34, i32* %36)
  %38 = load i64, i64* @ipc_base, align 8
  %39 = load i32, i32* @IPC_RX_MBOX, align 4
  %40 = call i64 @IPCMxSEND(i32 %39)
  %41 = add nsw i64 %38, %40
  %42 = call i32 @writel_relaxed(i32 2, i64 %41)
  br label %43

43:                                               ; preds = %29, %23
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %44
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @IPCMMIS(i32) #1

declare dso_local i32 @MBOX_MASK(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @IPCMxSEND(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @__ipc_rcv(i32, i32*) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
