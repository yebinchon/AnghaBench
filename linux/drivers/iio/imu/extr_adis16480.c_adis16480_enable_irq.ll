; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adis = type { i32 }

@ADIS16480_REG_FNCTIO_CTRL = common dso_local global i32 0, align 4
@ADIS16480_DRDY_EN_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adis*, i32)* @adis16480_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_enable_irq(%struct.adis* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adis*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adis* %0, %struct.adis** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.adis*, %struct.adis** %4, align 8
  %9 = load i32, i32* @ADIS16480_REG_FNCTIO_CTRL, align 4
  %10 = call i32 @adis_read_reg_16(%struct.adis* %8, i32 %9, i32* %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load i32, i32* @ADIS16480_DRDY_EN_MSK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ADIS16480_DRDY_EN(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.adis*, %struct.adis** %4, align 8
  %25 = load i32, i32* @ADIS16480_REG_FNCTIO_CTRL, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @adis_write_reg_16(%struct.adis* %24, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %15, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @adis_read_reg_16(%struct.adis*, i32, i32*) #1

declare dso_local i32 @ADIS16480_DRDY_EN(i32) #1

declare dso_local i32 @adis_write_reg_16(%struct.adis*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
