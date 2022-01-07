; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_gpio_pin_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_gpio_pin_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dln2_gpio = type { i32 }
%struct.dln2_gpio_pin = type { i64 }
%struct.dln2_gpio_pin_val = type { i64, i32 }

@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dln2_gpio*, i32, i32)* @dln2_gpio_pin_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_gpio_pin_val(%struct.dln2_gpio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dln2_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dln2_gpio_pin, align 8
  %10 = alloca %struct.dln2_gpio_pin_val, align 8
  %11 = alloca i32, align 4
  store %struct.dln2_gpio* %0, %struct.dln2_gpio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = getelementptr inbounds %struct.dln2_gpio_pin, %struct.dln2_gpio_pin* %9, i32 0, i32 0
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @cpu_to_le16(i32 %13)
  store i64 %14, i64* %12, align 8
  store i32 16, i32* %11, align 4
  %15 = load %struct.dln2_gpio*, %struct.dln2_gpio** %5, align 8
  %16 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dln2_transfer(i32 %17, i32 %18, %struct.dln2_gpio_pin* %9, i32 8, %struct.dln2_gpio_pin_val* %10, i32* %11)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %40

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 16
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dln2_gpio_pin, %struct.dln2_gpio_pin* %9, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.dln2_gpio_pin_val, %struct.dln2_gpio_pin_val* %10, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %24
  %35 = load i32, i32* @EPROTO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %40

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.dln2_gpio_pin_val, %struct.dln2_gpio_pin_val* %10, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %34, %22
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @dln2_transfer(i32, i32, %struct.dln2_gpio_pin*, i32, %struct.dln2_gpio_pin_val*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
