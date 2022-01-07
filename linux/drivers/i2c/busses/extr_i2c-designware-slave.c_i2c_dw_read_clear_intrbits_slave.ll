; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-slave.c_i2c_dw_read_clear_intrbits_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-slave.c_i2c_dw_read_clear_intrbits_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32 }

@DW_IC_INTR_STAT = common dso_local global i32 0, align 4
@DW_IC_INTR_TX_ABRT = common dso_local global i32 0, align 4
@DW_IC_CLR_TX_ABRT = common dso_local global i32 0, align 4
@DW_IC_INTR_RX_UNDER = common dso_local global i32 0, align 4
@DW_IC_CLR_RX_UNDER = common dso_local global i32 0, align 4
@DW_IC_INTR_RX_OVER = common dso_local global i32 0, align 4
@DW_IC_CLR_RX_OVER = common dso_local global i32 0, align 4
@DW_IC_INTR_TX_OVER = common dso_local global i32 0, align 4
@DW_IC_CLR_TX_OVER = common dso_local global i32 0, align 4
@DW_IC_INTR_RX_DONE = common dso_local global i32 0, align 4
@DW_IC_CLR_RX_DONE = common dso_local global i32 0, align 4
@DW_IC_INTR_ACTIVITY = common dso_local global i32 0, align 4
@DW_IC_CLR_ACTIVITY = common dso_local global i32 0, align 4
@DW_IC_INTR_STOP_DET = common dso_local global i32 0, align 4
@DW_IC_CLR_STOP_DET = common dso_local global i32 0, align 4
@DW_IC_INTR_START_DET = common dso_local global i32 0, align 4
@DW_IC_CLR_START_DET = common dso_local global i32 0, align 4
@DW_IC_INTR_GEN_CALL = common dso_local global i32 0, align 4
@DW_IC_CLR_GEN_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_i2c_dev*)* @i2c_dw_read_clear_intrbits_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_dw_read_clear_intrbits_slave(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca %struct.dw_i2c_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %2, align 8
  %4 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %5 = load i32, i32* @DW_IC_INTR_STAT, align 4
  %6 = call i32 @dw_readl(%struct.dw_i2c_dev* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @DW_IC_INTR_TX_ABRT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %13 = load i32, i32* @DW_IC_CLR_TX_ABRT, align 4
  %14 = call i32 @dw_readl(%struct.dw_i2c_dev* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @DW_IC_INTR_RX_UNDER, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %22 = load i32, i32* @DW_IC_CLR_RX_UNDER, align 4
  %23 = call i32 @dw_readl(%struct.dw_i2c_dev* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @DW_IC_INTR_RX_OVER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %31 = load i32, i32* @DW_IC_CLR_RX_OVER, align 4
  %32 = call i32 @dw_readl(%struct.dw_i2c_dev* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @DW_IC_INTR_TX_OVER, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %40 = load i32, i32* @DW_IC_CLR_TX_OVER, align 4
  %41 = call i32 @dw_readl(%struct.dw_i2c_dev* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @DW_IC_INTR_RX_DONE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %49 = load i32, i32* @DW_IC_CLR_RX_DONE, align 4
  %50 = call i32 @dw_readl(%struct.dw_i2c_dev* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @DW_IC_INTR_ACTIVITY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %58 = load i32, i32* @DW_IC_CLR_ACTIVITY, align 4
  %59 = call i32 @dw_readl(%struct.dw_i2c_dev* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @DW_IC_INTR_STOP_DET, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %67 = load i32, i32* @DW_IC_CLR_STOP_DET, align 4
  %68 = call i32 @dw_readl(%struct.dw_i2c_dev* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @DW_IC_INTR_START_DET, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %76 = load i32, i32* @DW_IC_CLR_START_DET, align 4
  %77 = call i32 @dw_readl(%struct.dw_i2c_dev* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @DW_IC_INTR_GEN_CALL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %85 = load i32, i32* @DW_IC_CLR_GEN_CALL, align 4
  %86 = call i32 @dw_readl(%struct.dw_i2c_dev* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @dw_readl(%struct.dw_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
