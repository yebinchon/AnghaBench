; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_arm_mhu.c_mhu_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_arm_mhu.c_mhu_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.TYPE_2__*, %struct.mhu_link* }
%struct.TYPE_2__ = type { i32 }
%struct.mhu_link = type { i32, i64 }

@INTR_STAT_OFS = common dso_local global i64 0, align 8
@INTR_CLR_OFS = common dso_local global i64 0, align 8
@mhu_rx_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mhu_link\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to acquire IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @mhu_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mhu_startup(%struct.mbox_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.mhu_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  %7 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %8 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %7, i32 0, i32 1
  %9 = load %struct.mhu_link*, %struct.mhu_link** %8, align 8
  store %struct.mhu_link* %9, %struct.mhu_link** %4, align 8
  %10 = load %struct.mhu_link*, %struct.mhu_link** %4, align 8
  %11 = getelementptr inbounds %struct.mhu_link, %struct.mhu_link* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @INTR_STAT_OFS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl_relaxed(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.mhu_link*, %struct.mhu_link** %4, align 8
  %18 = getelementptr inbounds %struct.mhu_link, %struct.mhu_link* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @INTR_CLR_OFS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 %16, i64 %21)
  %23 = load %struct.mhu_link*, %struct.mhu_link** %4, align 8
  %24 = getelementptr inbounds %struct.mhu_link, %struct.mhu_link* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @mhu_rx_interrupt, align 4
  %27 = load i32, i32* @IRQF_SHARED, align 4
  %28 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %29 = call i32 @request_irq(i32 %25, i32 %26, i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.mbox_chan* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %1
  %33 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %34 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mhu_link*, %struct.mhu_link** %4, align 8
  %39 = getelementptr inbounds %struct.mhu_link, %struct.mhu_link* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.mbox_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
