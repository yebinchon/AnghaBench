; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_i2c_dev = type { i64, i32 }

@I2C_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@iic_enable = common dso_local global i32 0, align 4
@BSC_IIC_EN_INTRP_MASK = common dso_local global i32 0, align 4
@INT_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmstb_i2c_dev*)* @brcmstb_i2c_wait_for_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_i2c_wait_for_completion(%struct.brcmstb_i2c_dev* %0) #0 {
  %2 = alloca %struct.brcmstb_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.brcmstb_i2c_dev* %0, %struct.brcmstb_i2c_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @I2C_TIMEOUT, align 4
  %8 = call i64 @msecs_to_jiffies(i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %10 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %15 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @wait_for_completion_timeout(i32* %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ETIMEDOUT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %13
  br label %47

23:                                               ; preds = %1
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %42, %23
  %28 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %29 = load i32, i32* @iic_enable, align 4
  %30 = call i32 @bsc_readl(%struct.brcmstb_i2c_dev* %28, i32 %29)
  %31 = load i32, i32* @BSC_IIC_EN_INTRP_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @time_after(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %46

40:                                               ; preds = %27
  %41 = call i32 (...) @cpu_relax()
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %27, label %46

46:                                               ; preds = %42, %37
  br label %47

47:                                               ; preds = %46, %22
  %48 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %49 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %52, %47
  %58 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %59 = load i32, i32* @INT_DISABLE, align 4
  %60 = call i32 @brcmstb_i2c_enable_disable_irq(%struct.brcmstb_i2c_dev* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @bsc_readl(%struct.brcmstb_i2c_dev*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @brcmstb_i2c_enable_disable_irq(%struct.brcmstb_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
