; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_zynq_read_adc_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_zynq_read_adc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xadc = type { i32, i32 }

@XADC_ZYNQ_CMD_READ = common dso_local global i32 0, align 4
@XADC_ZYNQ_CMD_NOP = common dso_local global i32 0, align 4
@XADC_ZYNQ_INT_DFIFO_GTH = common dso_local global i32 0, align 4
@XADC_ZYNQ_REG_CFG = common dso_local global i32 0, align 4
@XADC_ZYNQ_CFG_DFIFOTH_MASK = common dso_local global i32 0, align 4
@XADC_ZYNQ_CFG_DFIFOTH_OFFSET = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XADC_ZYNQ_REG_DFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xadc*, i32, i32*)* @xadc_zynq_read_adc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_zynq_read_adc_reg(%struct.xadc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xadc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xadc* %0, %struct.xadc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @XADC_ZYNQ_CMD_READ, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @XADC_ZYNQ_CMD(i32 %12, i32 %13, i32 0)
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @XADC_ZYNQ_CMD_NOP, align 4
  %17 = call i32 @XADC_ZYNQ_CMD(i32 %16, i32 0, i32 0)
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.xadc*, %struct.xadc** %5, align 8
  %20 = getelementptr inbounds %struct.xadc, %struct.xadc* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load %struct.xadc*, %struct.xadc** %5, align 8
  %23 = load i32, i32* @XADC_ZYNQ_INT_DFIFO_GTH, align 4
  %24 = load i32, i32* @XADC_ZYNQ_INT_DFIFO_GTH, align 4
  %25 = call i32 @xadc_zynq_update_intmsk(%struct.xadc* %22, i32 %23, i32 %24)
  %26 = load %struct.xadc*, %struct.xadc** %5, align 8
  %27 = call i32 @xadc_zynq_drain_fifo(%struct.xadc* %26)
  %28 = load %struct.xadc*, %struct.xadc** %5, align 8
  %29 = getelementptr inbounds %struct.xadc, %struct.xadc* %28, i32 0, i32 0
  %30 = call i32 @reinit_completion(i32* %29)
  %31 = load %struct.xadc*, %struct.xadc** %5, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = call i32 @xadc_zynq_write_fifo(%struct.xadc* %31, i32* %32, i32 %34)
  %36 = load %struct.xadc*, %struct.xadc** %5, align 8
  %37 = load i32, i32* @XADC_ZYNQ_REG_CFG, align 4
  %38 = call i32 @xadc_read_reg(%struct.xadc* %36, i32 %37, i32* %10)
  %39 = load i32, i32* @XADC_ZYNQ_CFG_DFIFOTH_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @XADC_ZYNQ_CFG_DFIFOTH_OFFSET, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load %struct.xadc*, %struct.xadc** %5, align 8
  %48 = load i32, i32* @XADC_ZYNQ_REG_CFG, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @xadc_write_reg(%struct.xadc* %47, i32 %48, i32 %49)
  %51 = load %struct.xadc*, %struct.xadc** %5, align 8
  %52 = load i32, i32* @XADC_ZYNQ_INT_DFIFO_GTH, align 4
  %53 = call i32 @xadc_zynq_update_intmsk(%struct.xadc* %51, i32 %52, i32 0)
  %54 = load %struct.xadc*, %struct.xadc** %5, align 8
  %55 = getelementptr inbounds %struct.xadc, %struct.xadc* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock_irq(i32* %55)
  %57 = load %struct.xadc*, %struct.xadc** %5, align 8
  %58 = getelementptr inbounds %struct.xadc, %struct.xadc* %57, i32 0, i32 0
  %59 = load i32, i32* @HZ, align 4
  %60 = call i32 @wait_for_completion_interruptible_timeout(i32* %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %3
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %63, %3
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %81

71:                                               ; preds = %66
  %72 = load %struct.xadc*, %struct.xadc** %5, align 8
  %73 = load i32, i32* @XADC_ZYNQ_REG_DFIFO, align 4
  %74 = call i32 @xadc_read_reg(%struct.xadc* %72, i32 %73, i32* %9)
  %75 = load %struct.xadc*, %struct.xadc** %5, align 8
  %76 = load i32, i32* @XADC_ZYNQ_REG_DFIFO, align 4
  %77 = call i32 @xadc_read_reg(%struct.xadc* %75, i32 %76, i32* %9)
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %78, 65535
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %71, %69
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @XADC_ZYNQ_CMD(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @xadc_zynq_update_intmsk(%struct.xadc*, i32, i32) #1

declare dso_local i32 @xadc_zynq_drain_fifo(%struct.xadc*) #1

declare dso_local i32 @reinit_completion(i32*) #1

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
