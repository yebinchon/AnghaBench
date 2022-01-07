; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_mailbox_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_mailbox_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.tegra_hsp_mailbox* }
%struct.tegra_hsp_mailbox = type { %struct.tegra_hsp_channel }
%struct.tegra_hsp_channel = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HSP_SM_SHRD_MBOX = common dso_local global i32 0, align 4
@HSP_SM_SHRD_MBOX_FULL = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*, i64)* @tegra_hsp_mailbox_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_hsp_mailbox_flush(%struct.mbox_chan* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbox_chan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tegra_hsp_mailbox*, align 8
  %7 = alloca %struct.tegra_hsp_channel*, align 8
  %8 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %10 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %9, i32 0, i32 0
  %11 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %10, align 8
  store %struct.tegra_hsp_mailbox* %11, %struct.tegra_hsp_mailbox** %6, align 8
  %12 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %6, align 8
  %13 = getelementptr inbounds %struct.tegra_hsp_mailbox, %struct.tegra_hsp_mailbox* %12, i32 0, i32 0
  store %struct.tegra_hsp_channel* %13, %struct.tegra_hsp_channel** %7, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @msecs_to_jiffies(i64 %15)
  %17 = add i64 %14, %16
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %34, %2
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @time_before(i64 %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.tegra_hsp_channel*, %struct.tegra_hsp_channel** %7, align 8
  %25 = load i32, i32* @HSP_SM_SHRD_MBOX, align 4
  %26 = call i32 @tegra_hsp_channel_readl(%struct.tegra_hsp_channel* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @HSP_SM_SHRD_MBOX_FULL, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %33 = call i32 @mbox_chan_txdone(%struct.mbox_chan* %32, i32 0)
  store i32 0, i32* %3, align 4
  br label %39

34:                                               ; preds = %23
  %35 = call i32 @udelay(i32 1)
  br label %18

36:                                               ; preds = %18
  %37 = load i32, i32* @ETIME, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @tegra_hsp_channel_readl(%struct.tegra_hsp_channel*, i32) #1

declare dso_local i32 @mbox_chan_txdone(%struct.mbox_chan*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
