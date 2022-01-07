; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_armada-37xx-rwtm-mailbox.c_a37xx_mbox_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_armada-37xx-rwtm-mailbox.c_a37xx_mbox_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.a37xx_mbox* }
%struct.a37xx_mbox = type { i64, i32, i32 }

@a37xx_mbox_irq_handler = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Cannot request irq\0A\00", align 1
@RWTM_HOST_INT_MASK = common dso_local global i64 0, align 8
@SP_CMD_COMPLETE = common dso_local global i32 0, align 4
@SP_CMD_QUEUE_FULL_ACCESS = common dso_local global i32 0, align 4
@SP_CMD_QUEUE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @a37xx_mbox_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a37xx_mbox_startup(%struct.mbox_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.a37xx_mbox*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  %7 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %8 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %7, i32 0, i32 0
  %9 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %8, align 8
  store %struct.a37xx_mbox* %9, %struct.a37xx_mbox** %4, align 8
  %10 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %11 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %14 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @a37xx_mbox_irq_handler, align 4
  %17 = load i32, i32* @DRIVER_NAME, align 4
  %18 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %19 = call i32 @devm_request_irq(i32 %12, i32 %15, i32 %16, i32 0, i32 %17, %struct.mbox_chan* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %24 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %50

28:                                               ; preds = %1
  %29 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %30 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RWTM_HOST_INT_MASK, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @SP_CMD_COMPLETE, align 4
  %36 = load i32, i32* @SP_CMD_QUEUE_FULL_ACCESS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SP_CMD_QUEUE_FULL, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %45 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RWTM_HOST_INT_MASK, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %28, %22
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.mbox_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
