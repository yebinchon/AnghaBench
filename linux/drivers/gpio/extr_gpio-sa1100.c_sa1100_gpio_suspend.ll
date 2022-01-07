; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sa1100.c_sa1100_gpio_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sa1100.c_sa1100_gpio_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100_gpio_chip = type { i32, i32, i32, i64 }

@sa1100_gpio_chip = common dso_local global %struct.sa1100_gpio_chip zeroinitializer, align 8
@R_GRER = common dso_local global i64 0, align 8
@R_GFER = common dso_local global i64 0, align 8
@R_GEDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sa1100_gpio_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_gpio_suspend() #0 {
  %1 = alloca %struct.sa1100_gpio_chip*, align 8
  store %struct.sa1100_gpio_chip* @sa1100_gpio_chip, %struct.sa1100_gpio_chip** %1, align 8
  %2 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %1, align 8
  %3 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %1, align 8
  %6 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %4, %7
  %9 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %1, align 8
  %10 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @R_GRER, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel_relaxed(i32 %8, i64 %13)
  %15 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %1, align 8
  %16 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %1, align 8
  %19 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %17, %20
  %22 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %1, align 8
  %23 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @R_GFER, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %21, i64 %26)
  %28 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %1, align 8
  %29 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @R_GEDR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl_relaxed(i64 %32)
  %34 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %1, align 8
  %35 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @R_GEDR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel_relaxed(i32 %33, i64 %38)
  ret i32 0
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
