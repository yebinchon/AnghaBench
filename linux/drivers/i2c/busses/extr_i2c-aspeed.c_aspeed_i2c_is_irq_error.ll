; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-aspeed.c_aspeed_i2c_is_irq_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-aspeed.c_aspeed_i2c_is_irq_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASPEED_I2CD_INTR_ARBIT_LOSS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ASPEED_I2CD_INTR_SDA_DL_TIMEOUT = common dso_local global i32 0, align 4
@ASPEED_I2CD_INTR_SCL_TIMEOUT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ASPEED_I2CD_INTR_ABNORMAL = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aspeed_i2c_is_irq_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_i2c_is_irq_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @ASPEED_I2CD_INTR_ARBIT_LOSS, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EAGAIN, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ASPEED_I2CD_INTR_SDA_DL_TIMEOUT, align 4
  %14 = load i32, i32* @ASPEED_I2CD_INTR_SCL_TIMEOUT, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ASPEED_I2CD_INTR_ABNORMAL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EPROTO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %26, %18, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
