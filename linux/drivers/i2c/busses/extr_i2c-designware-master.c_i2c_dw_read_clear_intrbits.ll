; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_read_clear_intrbits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_read_clear_intrbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i8* }

@DW_IC_INTR_STAT = common dso_local global i32 0, align 4
@DW_IC_INTR_RX_UNDER = common dso_local global i32 0, align 4
@DW_IC_CLR_RX_UNDER = common dso_local global i32 0, align 4
@DW_IC_INTR_RX_OVER = common dso_local global i32 0, align 4
@DW_IC_CLR_RX_OVER = common dso_local global i32 0, align 4
@DW_IC_INTR_TX_OVER = common dso_local global i32 0, align 4
@DW_IC_CLR_TX_OVER = common dso_local global i32 0, align 4
@DW_IC_INTR_RD_REQ = common dso_local global i32 0, align 4
@DW_IC_CLR_RD_REQ = common dso_local global i32 0, align 4
@DW_IC_INTR_TX_ABRT = common dso_local global i32 0, align 4
@DW_IC_TX_ABRT_SOURCE = common dso_local global i32 0, align 4
@DW_IC_CLR_TX_ABRT = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_i2c_dev*)* @i2c_dw_read_clear_intrbits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_dw_read_clear_intrbits(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca %struct.dw_i2c_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %2, align 8
  %4 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %5 = load i32, i32* @DW_IC_INTR_STAT, align 4
  %6 = call i8* @dw_readl(%struct.dw_i2c_dev* %4, i32 %5)
  %7 = ptrtoint i8* %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @DW_IC_INTR_RX_UNDER, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %14 = load i32, i32* @DW_IC_CLR_RX_UNDER, align 4
  %15 = call i8* @dw_readl(%struct.dw_i2c_dev* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @DW_IC_INTR_RX_OVER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %23 = load i32, i32* @DW_IC_CLR_RX_OVER, align 4
  %24 = call i8* @dw_readl(%struct.dw_i2c_dev* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @DW_IC_INTR_TX_OVER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %32 = load i32, i32* @DW_IC_CLR_TX_OVER, align 4
  %33 = call i8* @dw_readl(%struct.dw_i2c_dev* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @DW_IC_INTR_RD_REQ, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %41 = load i32, i32* @DW_IC_CLR_RD_REQ, align 4
  %42 = call i8* @dw_readl(%struct.dw_i2c_dev* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @DW_IC_INTR_TX_ABRT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %50 = load i32, i32* @DW_IC_TX_ABRT_SOURCE, align 4
  %51 = call i8* @dw_readl(%struct.dw_i2c_dev* %49, i32 %50)
  %52 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %53 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %55 = load i32, i32* @DW_IC_CLR_TX_ABRT, align 4
  %56 = call i8* @dw_readl(%struct.dw_i2c_dev* %54, i32 %55)
  br label %57

57:                                               ; preds = %48, %43
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @DW_IC_INTR_RX_DONE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %64 = load i32, i32* @DW_IC_CLR_RX_DONE, align 4
  %65 = call i8* @dw_readl(%struct.dw_i2c_dev* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @DW_IC_INTR_ACTIVITY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %73 = load i32, i32* @DW_IC_CLR_ACTIVITY, align 4
  %74 = call i8* @dw_readl(%struct.dw_i2c_dev* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @DW_IC_INTR_STOP_DET, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %82 = load i32, i32* @DW_IC_CLR_STOP_DET, align 4
  %83 = call i8* @dw_readl(%struct.dw_i2c_dev* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @DW_IC_INTR_START_DET, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %91 = load i32, i32* @DW_IC_CLR_START_DET, align 4
  %92 = call i8* @dw_readl(%struct.dw_i2c_dev* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @DW_IC_INTR_GEN_CALL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %100 = load i32, i32* @DW_IC_CLR_GEN_CALL, align 4
  %101 = call i8* @dw_readl(%struct.dw_i2c_dev* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i8* @dw_readl(%struct.dw_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
