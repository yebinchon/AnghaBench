; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_xfer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_xfer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i64, %struct.i2c_msg* }
%struct.i2c_msg = type { i32, i32 }

@DW_IC_CON = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@DW_IC_CON_10BITADDR_MASTER = common dso_local global i32 0, align 4
@DW_IC_TAR_10BITADDR_MASTER = common dso_local global i32 0, align 4
@DW_IC_TAR = common dso_local global i32 0, align 4
@DW_IC_ENABLE_STATUS = common dso_local global i32 0, align 4
@DW_IC_CLR_INTR = common dso_local global i32 0, align 4
@DW_IC_INTR_MASTER_MASK = common dso_local global i32 0, align 4
@DW_IC_INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i2c_dev*)* @i2c_dw_xfer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_dw_xfer_init(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca %struct.dw_i2c_dev*, align 8
  %3 = alloca %struct.i2c_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %2, align 8
  %6 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %7 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %6, i32 0, i32 1
  %8 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  store %struct.i2c_msg* %8, %struct.i2c_msg** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %10 = call i32 @__i2c_dw_disable(%struct.dw_i2c_dev* %9)
  %11 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %12 = load i32, i32* @DW_IC_CON, align 4
  %13 = call i32 @dw_readl(%struct.dw_i2c_dev* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %15 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %16 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i64 %17
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @I2C_M_TEN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @DW_IC_CON_10BITADDR_MASTER, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @DW_IC_TAR_10BITADDR_MASTER, align 4
  store i32 %28, i32* %5, align 4
  br label %34

29:                                               ; preds = %1
  %30 = load i32, i32* @DW_IC_CON_10BITADDR_MASTER, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @DW_IC_CON, align 4
  %38 = call i32 @dw_writel(%struct.dw_i2c_dev* %35, i32 %36, i32 %37)
  %39 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %41 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %42 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i64 %43
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @DW_IC_TAR, align 4
  %50 = call i32 @dw_writel(%struct.dw_i2c_dev* %39, i32 %48, i32 %49)
  %51 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %52 = call i32 @i2c_dw_disable_int(%struct.dw_i2c_dev* %51)
  %53 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %54 = call i32 @__i2c_dw_enable(%struct.dw_i2c_dev* %53)
  %55 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %56 = load i32, i32* @DW_IC_ENABLE_STATUS, align 4
  %57 = call i32 @dw_readl(%struct.dw_i2c_dev* %55, i32 %56)
  %58 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %59 = load i32, i32* @DW_IC_CLR_INTR, align 4
  %60 = call i32 @dw_readl(%struct.dw_i2c_dev* %58, i32 %59)
  %61 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %62 = load i32, i32* @DW_IC_INTR_MASTER_MASK, align 4
  %63 = load i32, i32* @DW_IC_INTR_MASK, align 4
  %64 = call i32 @dw_writel(%struct.dw_i2c_dev* %61, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @__i2c_dw_disable(%struct.dw_i2c_dev*) #1

declare dso_local i32 @dw_readl(%struct.dw_i2c_dev*, i32) #1

declare dso_local i32 @dw_writel(%struct.dw_i2c_dev*, i32, i32) #1

declare dso_local i32 @i2c_dw_disable_int(%struct.dw_i2c_dev*) #1

declare dso_local i32 @__i2c_dw_enable(%struct.dw_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
