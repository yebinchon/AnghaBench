; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_armada-37xx-rwtm-mailbox.c_a37xx_mbox_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_armada-37xx-rwtm-mailbox.c_a37xx_mbox_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.a37xx_mbox* }
%struct.a37xx_mbox = type { i64, i32 }

@RWTM_HOST_INT_RESET = common dso_local global i64 0, align 8
@SP_CMD_COMPLETE = common dso_local global i32 0, align 4
@SP_CMD_QUEUE_FULL_ACCESS = common dso_local global i32 0, align 4
@SP_CMD_QUEUE_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Secure processor command queue full\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @a37xx_mbox_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a37xx_mbox_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mbox_chan*, align 8
  %6 = alloca %struct.a37xx_mbox*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mbox_chan*
  store %struct.mbox_chan* %9, %struct.mbox_chan** %5, align 8
  %10 = load %struct.mbox_chan*, %struct.mbox_chan** %5, align 8
  %11 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %10, i32 0, i32 0
  %12 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %11, align 8
  store %struct.a37xx_mbox* %12, %struct.a37xx_mbox** %6, align 8
  %13 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %6, align 8
  %14 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RWTM_HOST_INT_RESET, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SP_CMD_COMPLETE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.mbox_chan*, %struct.mbox_chan** %5, align 8
  %25 = call i32 @a37xx_mbox_receive(%struct.mbox_chan* %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SP_CMD_QUEUE_FULL_ACCESS, align 4
  %29 = load i32, i32* @SP_CMD_QUEUE_FULL, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %6, align 8
  %35 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %6, align 8
  %41 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RWTM_HOST_INT_RESET, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load %struct.mbox_chan*, %struct.mbox_chan** %5, align 8
  %50 = call i32 @mbox_chan_txdone(%struct.mbox_chan* %49, i32 0)
  br label %51

51:                                               ; preds = %48, %38
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @IRQ_NONE, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  ret i32 %59
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @a37xx_mbox_receive(%struct.mbox_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mbox_chan_txdone(%struct.mbox_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
