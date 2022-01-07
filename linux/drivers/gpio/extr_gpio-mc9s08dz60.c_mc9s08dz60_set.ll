; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mc9s08dz60.c_mc9s08dz60_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mc9s08dz60.c_mc9s08dz60_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc9s08dz60 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mc9s08dz60*, i32, i32)* @mc9s08dz60_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc9s08dz60_set(%struct.mc9s08dz60* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mc9s08dz60*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mc9s08dz60* %0, %struct.mc9s08dz60** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @mc9s_gpio_to_reg_and_bit(i32 %11, i32* %8, i32* %9)
  %13 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %5, align 8
  %14 = getelementptr inbounds %struct.mc9s08dz60, %struct.mc9s08dz60* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @i2c_smbus_read_byte_data(i32 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = shl i32 1, %24
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %34

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 1, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %5, align 8
  %36 = getelementptr inbounds %struct.mc9s08dz60, %struct.mc9s08dz60* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @i2c_smbus_write_byte_data(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %34
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @mc9s_gpio_to_reg_and_bit(i32, i32*, i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
