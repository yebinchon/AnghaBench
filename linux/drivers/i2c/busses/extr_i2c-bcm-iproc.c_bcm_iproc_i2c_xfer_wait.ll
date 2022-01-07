; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-iproc.c_bcm_iproc_i2c_xfer_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-iproc.c_bcm_iproc_i2c_xfer_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_iproc_i2c_dev = type { i32, i32, i64, i32 }
%struct.i2c_msg = type { i32 }

@I2C_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@M_CMD_OFFSET = common dso_local global i32 0, align 4
@IE_OFFSET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IS_OFFSET = common dso_local global i32 0, align 4
@ISR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"transaction timed out\0A\00", align 1
@M_FIFO_RX_FLUSH_SHIFT = common dso_local global i32 0, align 4
@M_FIFO_TX_FLUSH_SHIFT = common dso_local global i32 0, align 4
@M_FIFO_CTRL_OFFSET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_iproc_i2c_dev*, %struct.i2c_msg*, i32)* @bcm_iproc_i2c_xfer_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_iproc_i2c_xfer_wait(%struct.bcm_iproc_i2c_dev* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_iproc_i2c_dev*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.bcm_iproc_i2c_dev* %0, %struct.bcm_iproc_i2c_dev** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @I2C_TIMEOUT_MSEC, align 4
  %14 = call i64 @msecs_to_jiffies(i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %16 = load i32, i32* @M_CMD_OFFSET, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev* %15, i32 %16, i32 %17)
  %19 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %20 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %3
  %24 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %25 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %24, i32 0, i32 3
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @wait_for_completion_timeout(i32* %25, i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %29 = load i32, i32* @IE_OFFSET, align 4
  %30 = call i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev* %28, i32 %29, i32 0)
  %31 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %32 = load i32, i32* @IE_OFFSET, align 4
  %33 = call i32 @iproc_i2c_rd_reg(%struct.bcm_iproc_i2c_dev* %31, i32 %32)
  %34 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %35 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @synchronize_irq(i64 %36)
  br label %70

38:                                               ; preds = %3
  %39 = load i64, i64* @jiffies, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %12, align 8
  br label %42

42:                                               ; preds = %63, %38
  %43 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %44 = load i32, i32* @IS_OFFSET, align 4
  %45 = call i32 @iproc_i2c_rd_reg(%struct.bcm_iproc_i2c_dev* %43, i32 %44)
  %46 = load i32, i32* @ISR_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @bcm_iproc_i2c_process_m_event(%struct.bcm_iproc_i2c_dev* %48, i32 %49)
  %51 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %52 = load i32, i32* @IS_OFFSET, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev* %51, i32 %52, i32 %53)
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @time_after(i64 %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %42
  store i64 0, i64* %8, align 8
  br label %69

60:                                               ; preds = %42
  %61 = call i32 (...) @cpu_relax()
  %62 = call i32 (...) @cond_resched()
  br label %63

63:                                               ; preds = %60
  %64 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %65 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br i1 %68, label %42, label %69

69:                                               ; preds = %63, %59
  br label %70

70:                                               ; preds = %69, %23
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %70
  %74 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %75 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %73
  %79 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %80 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @M_FIFO_RX_FLUSH_SHIFT, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = load i32, i32* @M_FIFO_TX_FLUSH_SHIFT, align 4
  %86 = call i32 @BIT(i32 %85)
  %87 = or i32 %84, %86
  store i32 %87, i32* %9, align 4
  %88 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %89 = load i32, i32* @M_FIFO_CTRL_OFFSET, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev* %88, i32 %89, i32 %90)
  %92 = load i32, i32* @ETIMEDOUT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %112

94:                                               ; preds = %73, %70
  %95 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %96 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %97 = call i32 @bcm_iproc_i2c_check_status(%struct.bcm_iproc_i2c_dev* %95, %struct.i2c_msg* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load i32, i32* @M_FIFO_RX_FLUSH_SHIFT, align 4
  %102 = call i32 @BIT(i32 %101)
  %103 = load i32, i32* @M_FIFO_TX_FLUSH_SHIFT, align 4
  %104 = call i32 @BIT(i32 %103)
  %105 = or i32 %102, %104
  store i32 %105, i32* %9, align 4
  %106 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %5, align 8
  %107 = load i32, i32* @M_FIFO_CTRL_OFFSET, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev* %106, i32 %107, i32 %108)
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %4, align 4
  br label %112

111:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %100, %78
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev*, i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @iproc_i2c_rd_reg(%struct.bcm_iproc_i2c_dev*, i32) #1

declare dso_local i32 @synchronize_irq(i64) #1

declare dso_local i32 @bcm_iproc_i2c_process_m_event(%struct.bcm_iproc_i2c_dev*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @bcm_iproc_i2c_check_status(%struct.bcm_iproc_i2c_dev*, %struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
