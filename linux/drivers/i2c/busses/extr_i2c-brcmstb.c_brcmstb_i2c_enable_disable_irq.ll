; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_enable_disable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_enable_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_i2c_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BSC_CTL_REG_INT_EN_MASK = common dso_local global i32 0, align 4
@ctl_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmstb_i2c_dev*, i32)* @brcmstb_i2c_enable_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmstb_i2c_enable_disable_irq(%struct.brcmstb_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmstb_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.brcmstb_i2c_dev* %0, %struct.brcmstb_i2c_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* @BSC_CTL_REG_INT_EN_MASK, align 4
  %9 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %3, align 8
  %10 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %8
  store i32 %14, i32* %12, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load i32, i32* @BSC_CTL_REG_INT_EN_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %3, align 8
  %19 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %17
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %15, %7
  %25 = call i32 (...) @barrier()
  %26 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %3, align 8
  %27 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %3, align 8
  %28 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ctl_reg, align 4
  %33 = call i32 @bsc_writel(%struct.brcmstb_i2c_dev* %26, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @bsc_writel(%struct.brcmstb_i2c_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
