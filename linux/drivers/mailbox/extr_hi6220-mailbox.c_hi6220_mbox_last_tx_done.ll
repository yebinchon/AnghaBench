; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_hi6220-mailbox.c_hi6220_mbox_last_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_hi6220-mailbox.c_hi6220_mbox_last_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.hi6220_mbox_chan* }
%struct.hi6220_mbox_chan = type { i32, %struct.hi6220_mbox* }
%struct.hi6220_mbox = type { i64, i32 }

@MBOX_STATE_MASK = common dso_local global i32 0, align 4
@MBOX_STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @hi6220_mbox_last_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6220_mbox_last_tx_done(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.hi6220_mbox_chan*, align 8
  %4 = alloca %struct.hi6220_mbox*, align 8
  %5 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %6 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %7 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %6, i32 0, i32 0
  %8 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %7, align 8
  store %struct.hi6220_mbox_chan* %8, %struct.hi6220_mbox_chan** %3, align 8
  %9 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %3, align 8
  %10 = getelementptr inbounds %struct.hi6220_mbox_chan, %struct.hi6220_mbox_chan* %9, i32 0, i32 1
  %11 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %10, align 8
  store %struct.hi6220_mbox* %11, %struct.hi6220_mbox** %4, align 8
  %12 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %4, align 8
  %13 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %4, align 8
  %17 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %3, align 8
  %20 = getelementptr inbounds %struct.hi6220_mbox_chan, %struct.hi6220_mbox_chan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @MBOX_MODE_REG(i32 %21)
  %23 = add nsw i64 %18, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MBOX_STATE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @MBOX_STATE_IDLE, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @MBOX_MODE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
