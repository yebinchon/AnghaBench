; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_msg_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_msg_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32, i32, i32, %struct.TYPE_5__*, i32, i8*, %struct.TYPE_6__*, i8** }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mbox_chan*, i8*)* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i8*)* }

@EBUSY = common dso_local global i32 0, align 4
@MBOX_TX_QUEUE_LEN = common dso_local global i32 0, align 4
@TXDONE_BY_POLL = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_chan*)* @msg_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msg_submit(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %8 = load i32, i32* @EBUSY, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %11 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %10, i32 0, i32 4
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %15 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %20 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %19, i32 0, i32 5
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %1
  br label %91

24:                                               ; preds = %18
  %25 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %26 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %3, align 4
  %28 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %29 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sub i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %44

38:                                               ; preds = %24
  %39 = load i32, i32* @MBOX_TX_QUEUE_LEN, align 4
  %40 = load i32, i32* %3, align 4
  %41 = sub i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %34
  %45 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %46 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %45, i32 0, i32 7
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %6, align 8
  %52 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %53 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %52, i32 0, i32 6
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %55, align 8
  %57 = icmp ne i32 (%struct.TYPE_6__*, i8*)* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %44
  %59 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %60 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %59, i32 0, i32 6
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %62, align 8
  %64 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %65 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %64, i32 0, i32 6
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 %63(%struct.TYPE_6__* %66, i8* %67)
  br label %69

69:                                               ; preds = %58, %44
  %70 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %71 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32 (%struct.mbox_chan*, i8*)*, i32 (%struct.mbox_chan*, i8*)** %75, align 8
  %77 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 %76(%struct.mbox_chan* %77, i8* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %69
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %85 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %87 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add i32 %88, -1
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %82, %69
  br label %91

91:                                               ; preds = %90, %23
  %92 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %93 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %92, i32 0, i32 4
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %91
  %99 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %100 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @TXDONE_BY_POLL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %107 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %106, i32 0, i32 3
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %111 = call i32 @hrtimer_start(i32* %109, i32 0, i32 %110)
  br label %112

112:                                              ; preds = %105, %98, %91
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
