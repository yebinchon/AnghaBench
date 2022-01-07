; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_mbox_chan_to_altera_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_mbox_chan_to_altera_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_mbox = type { i32 }
%struct.mbox_chan = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.altera_mbox* (%struct.mbox_chan*)* @mbox_chan_to_altera_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.altera_mbox* @mbox_chan_to_altera_mbox(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.altera_mbox*, align 8
  %3 = alloca %struct.mbox_chan*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  %4 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %5 = icmp ne %struct.mbox_chan* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %8 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  store %struct.altera_mbox* null, %struct.altera_mbox** %2, align 8
  br label %17

12:                                               ; preds = %6
  %13 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %14 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.altera_mbox*
  store %struct.altera_mbox* %16, %struct.altera_mbox** %2, align 8
  br label %17

17:                                               ; preds = %12, %11
  %18 = load %struct.altera_mbox*, %struct.altera_mbox** %2, align 8
  ret %struct.altera_mbox* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
