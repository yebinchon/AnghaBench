; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_zynq_write_adc_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_zynq_write_adc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xadc = type { i32, i32 }

@XADC_ZYNQ_INT_DFIFO_GTH = common dso_local global i32 0, align 4
@XADC_ZYNQ_CMD_WRITE = common dso_local global i32 0, align 4
@XADC_ZYNQ_REG_CFG = common dso_local global i32 0, align 4
@XADC_ZYNQ_CFG_DFIFOTH_MASK = common dso_local global i32 0, align 4
@XADC_ZYNQ_CFG_DFIFOTH_OFFSET = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XADC_ZYNQ_REG_DFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xadc*, i32, i32)* @xadc_zynq_write_adc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_zynq_write_adc_reg(%struct.xadc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xadc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xadc* %0, %struct.xadc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.xadc*, %struct.xadc** %4, align 8
  %11 = getelementptr inbounds %struct.xadc, %struct.xadc* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.xadc*, %struct.xadc** %4, align 8
  %14 = load i32, i32* @XADC_ZYNQ_INT_DFIFO_GTH, align 4
  %15 = load i32, i32* @XADC_ZYNQ_INT_DFIFO_GTH, align 4
  %16 = call i32 @xadc_zynq_update_intmsk(%struct.xadc* %13, i32 %14, i32 %15)
  %17 = load %struct.xadc*, %struct.xadc** %4, align 8
  %18 = getelementptr inbounds %struct.xadc, %struct.xadc* %17, i32 0, i32 0
  %19 = call i32 @reinit_completion(i32* %18)
  %20 = load i32, i32* @XADC_ZYNQ_CMD_WRITE, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @XADC_ZYNQ_CMD(i32 %20, i32 %21, i32 %22)
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.xadc*, %struct.xadc** %4, align 8
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = call i32 @xadc_zynq_write_fifo(%struct.xadc* %25, i32* %26, i32 %28)
  %30 = load %struct.xadc*, %struct.xadc** %4, align 8
  %31 = load i32, i32* @XADC_ZYNQ_REG_CFG, align 4
  %32 = call i32 @xadc_read_reg(%struct.xadc* %30, i32 %31, i32* %8)
  %33 = load i32, i32* @XADC_ZYNQ_CFG_DFIFOTH_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @XADC_ZYNQ_CFG_DFIFOTH_OFFSET, align 4
  %38 = shl i32 0, %37
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load %struct.xadc*, %struct.xadc** %4, align 8
  %42 = load i32, i32* @XADC_ZYNQ_REG_CFG, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @xadc_write_reg(%struct.xadc* %41, i32 %42, i32 %43)
  %45 = load %struct.xadc*, %struct.xadc** %4, align 8
  %46 = load i32, i32* @XADC_ZYNQ_INT_DFIFO_GTH, align 4
  %47 = call i32 @xadc_zynq_update_intmsk(%struct.xadc* %45, i32 %46, i32 0)
  %48 = load %struct.xadc*, %struct.xadc** %4, align 8
  %49 = getelementptr inbounds %struct.xadc, %struct.xadc* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load %struct.xadc*, %struct.xadc** %4, align 8
  %52 = getelementptr inbounds %struct.xadc, %struct.xadc* %51, i32 0, i32 0
  %53 = load i32, i32* @HZ, align 4
  %54 = call i32 @wait_for_completion_interruptible_timeout(i32* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %3
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %61

60:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load %struct.xadc*, %struct.xadc** %4, align 8
  %63 = load i32, i32* @XADC_ZYNQ_REG_DFIFO, align 4
  %64 = call i32 @xadc_read_reg(%struct.xadc* %62, i32 %63, i32* %8)
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @xadc_zynq_update_intmsk(%struct.xadc*, i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @XADC_ZYNQ_CMD(i32, i32, i32) #1

declare dso_local i32 @xadc_zynq_write_fifo(%struct.xadc*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @xadc_read_reg(%struct.xadc*, i32, i32*) #1

declare dso_local i32 @xadc_write_reg(%struct.xadc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
