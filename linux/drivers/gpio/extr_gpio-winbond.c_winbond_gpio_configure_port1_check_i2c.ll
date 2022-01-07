; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-winbond.c_winbond_gpio_configure_port1_check_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-winbond.c_winbond_gpio_configure_port1_check_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@WB_SIO_REG_I2C_PS = common dso_local global i32 0, align 4
@WB_SIO_REG_I2CPS_I2CFS = common dso_local global i32 0, align 4
@params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [49 x i8] c"disabling GPIO2.5 and GPIO2.6 as I2C is enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @winbond_gpio_configure_port1_check_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @winbond_gpio_configure_port1_check_i2c(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i32, i32* @WB_SIO_REG_I2C_PS, align 4
  %5 = load i32, i32* @WB_SIO_REG_I2CPS_I2CFS, align 4
  %6 = call i32 @winbond_sio_reg_btest(i64 %3, i32 %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @winbond_sio_reg_btest(i64, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
