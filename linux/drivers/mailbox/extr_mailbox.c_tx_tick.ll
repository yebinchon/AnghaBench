; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_tx_tick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_tx_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i64, i32 (%struct.TYPE_2__*, i8*, i32)* }

@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_chan*, i32)* @tx_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_tick(%struct.mbox_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %8 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %7, i32 0, i32 2
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %12 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** %6, align 8
  %15 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %16 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %15, i32 0, i32 3
  store i32* null, i32** %16, align 8
  %17 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %18 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %17, i32 0, i32 2
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %22 = call i32 @msg_submit(%struct.mbox_chan* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %61

26:                                               ; preds = %2
  %27 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %28 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (%struct.TYPE_2__*, i8*, i32)*, i32 (%struct.TYPE_2__*, i8*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.TYPE_2__*, i8*, i32)* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %35 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32 (%struct.TYPE_2__*, i8*, i32)*, i32 (%struct.TYPE_2__*, i8*, i32)** %37, align 8
  %39 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %40 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 %38(%struct.TYPE_2__* %41, i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %33, %26
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @ETIME, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %52 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %59 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %58, i32 0, i32 0
  %60 = call i32 @complete(i32* %59)
  br label %61

61:                                               ; preds = %25, %57, %50, %45
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msg_submit(%struct.mbox_chan*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
