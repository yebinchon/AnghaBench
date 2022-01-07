; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32 }

@DW_IC_ENABLE = common dso_local global i32 0, align 4
@DW_IC_RAW_INTR_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"enabled=%#x stat=%#x\0A\00", align 1
@DW_IC_INTR_ACTIVITY = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @i2c_dw_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_dw_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dw_i2c_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.dw_i2c_dev*
  store %struct.dw_i2c_dev* %10, %struct.dw_i2c_dev** %6, align 8
  %11 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %6, align 8
  %12 = load i32, i32* @DW_IC_ENABLE, align 4
  %13 = call i32 @dw_readl(%struct.dw_i2c_dev* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %6, align 8
  %15 = load i32, i32* @DW_IC_RAW_INTR_STAT, align 4
  %16 = call i32 @dw_readl(%struct.dw_i2c_dev* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %6, align 8
  %18 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @DW_IC_INTR_ACTIVITY, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25, %2
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %25
  %34 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %6, align 8
  %35 = call i32 @i2c_dw_irq_handler_master(%struct.dw_i2c_dev* %34)
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %31
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @dw_readl(%struct.dw_i2c_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @i2c_dw_irq_handler_master(%struct.dw_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
