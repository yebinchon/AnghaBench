; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-winbond.c_winbond_gpio_iprobe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-winbond.c_winbond_gpio_iprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.device* }
%struct.device = type { i32 }

@params = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@winbond_gpio_chip = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @winbond_gpio_iprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @winbond_gpio_iprobe(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @params, i32 0, i32 0), align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %43

12:                                               ; preds = %2
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @params, i32 0, i32 0), align 8
  %14 = call i32 @winbond_sio_enter(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %12
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @params, i32 0, i32 0), align 8
  %21 = call i32 @winbond_gpio_configure(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @params, i32 0, i32 0), align 8
  %23 = call i32 @winbond_sio_leave(i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %19
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @params, i32 0, i32 1), align 8
  %30 = call i32 @hweight_long(i32 %29)
  %31 = mul nsw i32 %30, 8
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @winbond_gpio_chip, i32 0, i32 0), align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @params, i32 0, i32 1), align 8
  %33 = call i32 @BIT(i32 5)
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @winbond_gpio_chip, i32 0, i32 0), align 8
  %38 = sub nsw i32 %37, 3
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @winbond_gpio_chip, i32 0, i32 0), align 8
  br label %39

39:                                               ; preds = %36, %28
  %40 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %40, %struct.device** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @winbond_gpio_chip, i32 0, i32 1), align 8
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @devm_gpiochip_add_data(%struct.device* %41, %struct.TYPE_4__* @winbond_gpio_chip, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @params, i32 0, i32 0))
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %26, %17, %9
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @winbond_sio_enter(i64) #1

declare dso_local i32 @winbond_gpio_configure(i64) #1

declare dso_local i32 @winbond_sio_leave(i64) #1

declare dso_local i32 @hweight_long(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_4__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
