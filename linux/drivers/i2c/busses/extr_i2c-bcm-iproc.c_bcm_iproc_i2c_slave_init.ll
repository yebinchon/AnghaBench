; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-iproc.c_bcm_iproc_i2c_slave_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-iproc.c_bcm_iproc_i2c_slave_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_iproc_i2c_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CFG_OFFSET = common dso_local global i32 0, align 4
@CFG_RESET_SHIFT = common dso_local global i32 0, align 4
@S_FIFO_RX_FLUSH_SHIFT = common dso_local global i32 0, align 4
@S_FIFO_TX_FLUSH_SHIFT = common dso_local global i32 0, align 4
@S_FIFO_CTRL_OFFSET = common dso_local global i32 0, align 4
@TIM_CFG_OFFSET = common dso_local global i32 0, align 4
@TIM_RAND_SLAVE_STRETCH_MASK = common dso_local global i32 0, align 4
@TIM_RAND_SLAVE_STRETCH_SHIFT = common dso_local global i32 0, align 4
@SLAVE_CLOCK_STRETCH_TIME = common dso_local global i32 0, align 4
@S_CFG_SMBUS_ADDR_OFFSET = common dso_local global i32 0, align 4
@S_CFG_EN_NIC_SMB_ADDR3_SHIFT = common dso_local global i32 0, align 4
@S_CFG_NIC_SMB_ADDR3_MASK = common dso_local global i32 0, align 4
@S_CFG_NIC_SMB_ADDR3_SHIFT = common dso_local global i32 0, align 4
@IS_OFFSET = common dso_local global i32 0, align 4
@ISR_MASK_SLAVE = common dso_local global i32 0, align 4
@IE_S_RX_EVENT_SHIFT = common dso_local global i32 0, align 4
@IE_S_START_BUSY_SHIFT = common dso_local global i32 0, align 4
@IE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_iproc_i2c_dev*, i32)* @bcm_iproc_i2c_slave_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_iproc_i2c_slave_init(%struct.bcm_iproc_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm_iproc_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm_iproc_i2c_dev* %0, %struct.bcm_iproc_i2c_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %10 = load i32, i32* @CFG_OFFSET, align 4
  %11 = call i32 @iproc_i2c_rd_reg(%struct.bcm_iproc_i2c_dev* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @CFG_RESET_SHIFT, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %17 = load i32, i32* @CFG_OFFSET, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev* %16, i32 %17, i32 %18)
  %20 = call i32 @udelay(i32 100)
  %21 = load i32, i32* @CFG_RESET_SHIFT, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %27 = load i32, i32* @CFG_OFFSET, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %8, %2
  %31 = load i32, i32* @S_FIFO_RX_FLUSH_SHIFT, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load i32, i32* @S_FIFO_TX_FLUSH_SHIFT, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = or i32 %32, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %37 = load i32, i32* @S_FIFO_CTRL_OFFSET, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev* %36, i32 %37, i32 %38)
  %40 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %41 = load i32, i32* @TIM_CFG_OFFSET, align 4
  %42 = call i32 @iproc_i2c_rd_reg(%struct.bcm_iproc_i2c_dev* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @TIM_RAND_SLAVE_STRETCH_MASK, align 4
  %44 = load i32, i32* @TIM_RAND_SLAVE_STRETCH_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @SLAVE_CLOCK_STRETCH_TIME, align 4
  %50 = load i32, i32* @TIM_RAND_SLAVE_STRETCH_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %55 = load i32, i32* @TIM_CFG_OFFSET, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev* %54, i32 %55, i32 %56)
  %58 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %59 = load i32, i32* @S_CFG_SMBUS_ADDR_OFFSET, align 4
  %60 = call i32 @iproc_i2c_rd_reg(%struct.bcm_iproc_i2c_dev* %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @S_CFG_EN_NIC_SMB_ADDR3_SHIFT, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @S_CFG_NIC_SMB_ADDR3_MASK, align 4
  %66 = load i32, i32* @S_CFG_NIC_SMB_ADDR3_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %72 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @S_CFG_NIC_SMB_ADDR3_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %81 = load i32, i32* @S_CFG_SMBUS_ADDR_OFFSET, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev* %80, i32 %81, i32 %82)
  %84 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %85 = load i32, i32* @IS_OFFSET, align 4
  %86 = load i32, i32* @ISR_MASK_SLAVE, align 4
  %87 = call i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev* %84, i32 %85, i32 %86)
  %88 = load i32, i32* @IE_S_RX_EVENT_SHIFT, align 4
  %89 = call i32 @BIT(i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* @IE_S_START_BUSY_SHIFT, align 4
  %91 = call i32 @BIT(i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %95 = load i32, i32* @IE_OFFSET, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev* %94, i32 %95, i32 %96)
  ret void
}

declare dso_local i32 @iproc_i2c_rd_reg(%struct.bcm_iproc_i2c_dev*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
