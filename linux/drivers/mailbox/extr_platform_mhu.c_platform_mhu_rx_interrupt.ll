; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_platform_mhu.c_platform_mhu_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_platform_mhu.c_platform_mhu_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.platform_mhu_link* }
%struct.platform_mhu_link = type { i64 }

@INTR_STAT_OFS = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@INTR_CLR_OFS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @platform_mhu_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_mhu_rx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mbox_chan*, align 8
  %7 = alloca %struct.platform_mhu_link*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.mbox_chan*
  store %struct.mbox_chan* %10, %struct.mbox_chan** %6, align 8
  %11 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %12 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %11, i32 0, i32 0
  %13 = load %struct.platform_mhu_link*, %struct.platform_mhu_link** %12, align 8
  store %struct.platform_mhu_link* %13, %struct.platform_mhu_link** %7, align 8
  %14 = load %struct.platform_mhu_link*, %struct.platform_mhu_link** %7, align 8
  %15 = getelementptr inbounds %struct.platform_mhu_link, %struct.platform_mhu_link* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INTR_STAT_OFS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl_relaxed(i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %26 = bitcast i32* %8 to i8*
  %27 = call i32 @mbox_chan_received_data(%struct.mbox_chan* %25, i8* %26)
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.platform_mhu_link*, %struct.platform_mhu_link** %7, align 8
  %30 = getelementptr inbounds %struct.platform_mhu_link, %struct.platform_mhu_link* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @INTR_CLR_OFS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_relaxed(i32 %28, i64 %33)
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %24, %22
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @mbox_chan_received_data(%struct.mbox_chan*, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
