; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_mbox_free_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_mbox_free_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i64, i32, %struct.TYPE_7__*, i32*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.mbox_chan*)* }

@TXDONE_BY_ACK = common dso_local global i64 0, align 8
@TXDONE_BY_POLL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbox_free_channel(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca i64, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %4 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %5 = icmp ne %struct.mbox_chan* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %8 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %64

12:                                               ; preds = %6
  %13 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %14 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32 (%struct.mbox_chan*)*, i32 (%struct.mbox_chan*)** %18, align 8
  %20 = icmp ne i32 (%struct.mbox_chan*)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %23 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32 (%struct.mbox_chan*)*, i32 (%struct.mbox_chan*)** %27, align 8
  %29 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %30 = call i32 %28(%struct.mbox_chan* %29)
  br label %31

31:                                               ; preds = %21, %12
  %32 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %33 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %32, i32 0, i32 1
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %37 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  %38 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %39 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %41 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TXDONE_BY_ACK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load i64, i64* @TXDONE_BY_POLL, align 8
  %47 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %48 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %31
  %50 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %51 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %50, i32 0, i32 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @module_put(i32 %58)
  %60 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %61 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %60, i32 0, i32 1
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %49, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
