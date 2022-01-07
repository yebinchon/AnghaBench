; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_ti-msgmgr.c_ti_msgmgr_queue_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_ti-msgmgr.c_ti_msgmgr_queue_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.ti_queue_inst* }
%struct.ti_queue_inst = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_chan*)* @ti_msgmgr_queue_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_msgmgr_queue_shutdown(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.ti_queue_inst*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %4 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %5 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %4, i32 0, i32 0
  %6 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %5, align 8
  store %struct.ti_queue_inst* %6, %struct.ti_queue_inst** %3, align 8
  %7 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %3, align 8
  %8 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %3, align 8
  %13 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.mbox_chan* %15)
  %17 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %3, align 8
  %18 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @kfree(i32 %19)
  br label %21

21:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.mbox_chan*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
