; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-winbond.c_winbond_gpio_check_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-winbond.c_winbond_gpio_check_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WB_SIO_REG_CHIP_MSB = common dso_local global i32 0, align 4
@WB_SIO_REG_CHIP_LSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"chip ID at %lx is %.4x\0A\00", align 1
@WB_SIO_CHIP_ID_W83627UHG_MASK = common dso_local global i32 0, align 4
@WB_SIO_CHIP_ID_W83627UHG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"not an our chip\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @winbond_gpio_check_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @winbond_gpio_check_chip(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @winbond_sio_enter(i64 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @WB_SIO_REG_CHIP_MSB, align 4
  %15 = call i32 @winbond_sio_reg_read(i64 %13, i32 %14)
  %16 = shl i32 %15, 8
  store i32 %16, i32* %5, align 4
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @WB_SIO_REG_CHIP_LSB, align 4
  %19 = call i32 @winbond_sio_reg_read(i64 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @pr_notice(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @WB_SIO_CHIP_ID_W83627UHG_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @WB_SIO_CHIP_ID_W83627UHG, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %12
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %12
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @winbond_sio_leave(i64 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @winbond_sio_enter(i64) #1

declare dso_local i32 @winbond_sio_reg_read(i64, i32) #1

declare dso_local i32 @pr_notice(i8*, i64, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @winbond_sio_leave(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
