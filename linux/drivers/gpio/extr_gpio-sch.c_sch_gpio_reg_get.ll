; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sch.c_sch_gpio_reg_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sch.c_sch_gpio_reg_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sch_gpio = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sch_gpio*, i32, i32)* @sch_gpio_reg_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch_gpio_reg_get(%struct.sch_gpio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sch_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.sch_gpio* %0, %struct.sch_gpio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call zeroext i16 @sch_gpio_offset(%struct.sch_gpio* %10, i32 %11, i32 %12)
  store i16 %13, i16* %7, align 2
  %14 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call zeroext i16 @sch_gpio_bit(%struct.sch_gpio* %14, i32 %15)
  store i16 %16, i16* %8, align 2
  %17 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %18 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i16, i16* %7, align 2
  %21 = zext i16 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = call i32 @inb(i64 %22)
  %24 = load i16, i16* %8, align 2
  %25 = call i32 @BIT(i16 zeroext %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local zeroext i16 @sch_gpio_offset(%struct.sch_gpio*, i32, i32) #1

declare dso_local zeroext i16 @sch_gpio_bit(%struct.sch_gpio*, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @BIT(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
