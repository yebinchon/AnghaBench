; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_i2c_dev = type { i32, i32 }

@ctl_reg = common dso_local global i32 0, align 4
@iic_enable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"isr CTL_REG %x IIC_EN %x\0A\00", align 1
@BSC_CTL_REG_INT_EN_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@INT_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"isr handled\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @brcmstb_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.brcmstb_i2c_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.brcmstb_i2c_dev*
  store %struct.brcmstb_i2c_dev* %10, %struct.brcmstb_i2c_dev** %6, align 8
  %11 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %6, align 8
  %12 = load i32, i32* @ctl_reg, align 4
  %13 = call i32 @bsc_readl(%struct.brcmstb_i2c_dev* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %6, align 8
  %15 = load i32, i32* @iic_enable, align 4
  %16 = call i32 @bsc_readl(%struct.brcmstb_i2c_dev* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %6, align 8
  %18 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i32, i8*, ...) @dev_dbg(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @BSC_CTL_REG_INT_EN_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %2
  %30 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %6, align 8
  %31 = load i32, i32* @INT_DISABLE, align 4
  %32 = call i32 @brcmstb_i2c_enable_disable_irq(%struct.brcmstb_i2c_dev* %30, i32 %31)
  %33 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %6, align 8
  %34 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %33, i32 0, i32 1
  %35 = call i32 @complete(i32* %34)
  %36 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %6, align 8
  %37 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_dbg(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %29, %27
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @bsc_readl(%struct.brcmstb_i2c_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @brcmstb_i2c_enable_disable_irq(%struct.brcmstb_i2c_dev*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
