; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_irq_handler_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_irq_handler_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, i32, i64, i32, i32 }

@DW_IC_INTR_TX_ABRT = common dso_local global i32 0, align 4
@DW_IC_ERR_TX_ABRT = common dso_local global i32 0, align 4
@STATUS_IDLE = common dso_local global i32 0, align 4
@DW_IC_INTR_MASK = common dso_local global i32 0, align 4
@DW_IC_INTR_RX_FULL = common dso_local global i32 0, align 4
@DW_IC_INTR_TX_EMPTY = common dso_local global i32 0, align 4
@DW_IC_INTR_STOP_DET = common dso_local global i32 0, align 4
@ACCESS_INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_i2c_dev*)* @i2c_dw_irq_handler_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_dw_irq_handler_master(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca %struct.dw_i2c_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %2, align 8
  %4 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %5 = call i32 @i2c_dw_read_clear_intrbits(%struct.dw_i2c_dev* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @DW_IC_INTR_TX_ABRT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load i32, i32* @DW_IC_ERR_TX_ABRT, align 4
  %12 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %13 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @STATUS_IDLE, align 4
  %17 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %18 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %20 = load i32, i32* @DW_IC_INTR_MASK, align 4
  %21 = call i32 @dw_writel(%struct.dw_i2c_dev* %19, i32 0, i32 %20)
  br label %39

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @DW_IC_INTR_RX_FULL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %29 = call i32 @i2c_dw_read(%struct.dw_i2c_dev* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @DW_IC_INTR_TX_EMPTY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %37 = call i32 @i2c_dw_xfer_msg(%struct.dw_i2c_dev* %36)
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %38, %10
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @DW_IC_INTR_TX_ABRT, align 4
  %42 = load i32, i32* @DW_IC_INTR_STOP_DET, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %48 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46, %39
  %52 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %53 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %52, i32 0, i32 1
  %54 = call i32 @complete(i32* %53)
  br label %74

55:                                               ; preds = %46
  %56 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %57 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ACCESS_INTR_MASK, align 4
  %60 = and i32 %58, %59
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %55
  %64 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %65 = load i32, i32* @DW_IC_INTR_MASK, align 4
  %66 = call i32 @dw_readl(%struct.dw_i2c_dev* %64, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %68 = call i32 @i2c_dw_disable_int(%struct.dw_i2c_dev* %67)
  %69 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @DW_IC_INTR_MASK, align 4
  %72 = call i32 @dw_writel(%struct.dw_i2c_dev* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %63, %55
  br label %74

74:                                               ; preds = %73, %51
  ret i32 0
}

declare dso_local i32 @i2c_dw_read_clear_intrbits(%struct.dw_i2c_dev*) #1

declare dso_local i32 @dw_writel(%struct.dw_i2c_dev*, i32, i32) #1

declare dso_local i32 @i2c_dw_read(%struct.dw_i2c_dev*) #1

declare dso_local i32 @i2c_dw_xfer_msg(%struct.dw_i2c_dev*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dw_readl(%struct.dw_i2c_dev*, i32) #1

declare dso_local i32 @i2c_dw_disable_int(%struct.dw_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
