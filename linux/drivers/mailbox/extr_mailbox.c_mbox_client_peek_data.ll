; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_mbox_client_peek_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_mbox_client_peek_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbox_client_peek_data(%struct.mbox_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbox_chan*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  %4 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %5 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.mbox_chan*)**
  %11 = load i32 (%struct.mbox_chan*)*, i32 (%struct.mbox_chan*)** %10, align 8
  %12 = icmp ne i32 (%struct.mbox_chan*)* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %15 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.mbox_chan*)**
  %21 = load i32 (%struct.mbox_chan*)*, i32 (%struct.mbox_chan*)** %20, align 8
  %22 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %23 = call i32 %21(%struct.mbox_chan* %22)
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
