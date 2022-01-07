; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c_i2c_dw_set_sda_hold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c_i2c_dw_set_sda_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, i32, {}* }

@DW_IC_COMP_VERSION = common dso_local global i32 0, align 4
@DW_IC_SDA_HOLD_MIN_VERS = common dso_local global i64 0, align 8
@DW_IC_SDA_HOLD = common dso_local global i32 0, align 4
@DW_IC_SDA_HOLD_RX_MASK = common dso_local global i32 0, align 4
@DW_IC_SDA_HOLD_RX_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SDA Hold Time TX:RX = %d:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Hardware too old to adjust SDA hold time.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_dw_set_sda_hold(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_i2c_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %3, align 8
  %6 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %7 = call i32 @i2c_dw_acquire_lock(%struct.dw_i2c_dev* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %93

12:                                               ; preds = %1
  %13 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %14 = load i32, i32* @DW_IC_COMP_VERSION, align 4
  %15 = call i64 @dw_readl(%struct.dw_i2c_dev* %13, i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @DW_IC_SDA_HOLD_MIN_VERS, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %63

19:                                               ; preds = %12
  %20 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %21 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %26 = load i32, i32* @DW_IC_SDA_HOLD, align 4
  %27 = call i64 @dw_readl(%struct.dw_i2c_dev* %25, i32 %26)
  %28 = trunc i64 %27 to i32
  %29 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %30 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %33 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DW_IC_SDA_HOLD_RX_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @DW_IC_SDA_HOLD_RX_SHIFT, align 4
  %40 = shl i32 1, %39
  %41 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %42 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %47 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %50 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* @DW_IC_SDA_HOLD_RX_MASK, align 4
  %54 = sext i32 %53 to i64
  %55 = xor i64 %54, -1
  %56 = and i64 %52, %55
  %57 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %58 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DW_IC_SDA_HOLD_RX_SHIFT, align 4
  %61 = ashr i32 %59, %60
  %62 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %56, i32 %61)
  br label %90

63:                                               ; preds = %12
  %64 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %65 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %64, i32 0, i32 2
  %66 = bitcast {}** %65 to i32 (%struct.dw_i2c_dev*)**
  %67 = load i32 (%struct.dw_i2c_dev*)*, i32 (%struct.dw_i2c_dev*)** %66, align 8
  %68 = icmp ne i32 (%struct.dw_i2c_dev*)* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %71 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %70, i32 0, i32 2
  %72 = bitcast {}** %71 to i32 (%struct.dw_i2c_dev*)**
  %73 = load i32 (%struct.dw_i2c_dev*)*, i32 (%struct.dw_i2c_dev*)** %72, align 8
  %74 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %75 = call i32 %73(%struct.dw_i2c_dev* %74)
  br label %89

76:                                               ; preds = %63
  %77 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %78 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %83 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_warn(i32 %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %87 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  br label %88

88:                                               ; preds = %81, %76
  br label %89

89:                                               ; preds = %88, %69
  br label %90

90:                                               ; preds = %89, %45
  %91 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %92 = call i32 @i2c_dw_release_lock(%struct.dw_i2c_dev* %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %10
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @i2c_dw_acquire_lock(%struct.dw_i2c_dev*) #1

declare dso_local i64 @dw_readl(%struct.dw_i2c_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @i2c_dw_release_lock(%struct.dw_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
