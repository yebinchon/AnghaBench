; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm2835-mailbox.c_bcm2835_last_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm2835-mailbox.c_bcm2835_last_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32 }
%struct.bcm2835_mbox = type { i32, i64 }

@MAIL1_STA = common dso_local global i64 0, align 8
@ARM_MS_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @bcm2835_last_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_last_tx_done(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.bcm2835_mbox*, align 8
  %4 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %5 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %6 = call %struct.bcm2835_mbox* @bcm2835_link_mbox(%struct.mbox_chan* %5)
  store %struct.bcm2835_mbox* %6, %struct.bcm2835_mbox** %3, align 8
  %7 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %3, align 8
  %8 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %3, align 8
  %11 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAIL1_STA, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  %16 = load i32, i32* @ARM_MS_FULL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %3, align 8
  %22 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.bcm2835_mbox* @bcm2835_link_mbox(%struct.mbox_chan*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
