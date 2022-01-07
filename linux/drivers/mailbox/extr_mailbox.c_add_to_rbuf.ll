; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_add_to_rbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_add_to_rbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32, i32, i32, i8** }

@MBOX_TX_QUEUE_LEN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*, i8*)* @add_to_rbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_rbuf(%struct.mbox_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbox_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %9 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %8, i32 0, i32 2
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %13 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MBOX_TX_QUEUE_LEN, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %19 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %18, i32 0, i32 2
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load i32, i32* @ENOBUFS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %57

24:                                               ; preds = %2
  %25 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %26 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %30 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %29, i32 0, i32 3
  %31 = load i8**, i8*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  store i8* %28, i8** %34, align 8
  %35 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %36 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @MBOX_TX_QUEUE_LEN, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %24
  %44 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %45 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %51

46:                                               ; preds = %24
  %47 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %48 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %43
  %52 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %53 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %52, i32 0, i32 2
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
