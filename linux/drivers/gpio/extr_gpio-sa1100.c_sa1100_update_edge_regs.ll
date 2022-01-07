; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sa1100.c_sa1100_update_edge_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sa1100.c_sa1100_update_edge_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100_gpio_chip = type { i32, i32, i32, i8* }

@R_GRER = common dso_local global i32 0, align 4
@R_GFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1100_gpio_chip*)* @sa1100_update_edge_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_update_edge_regs(%struct.sa1100_gpio_chip* %0) #0 {
  %2 = alloca %struct.sa1100_gpio_chip*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sa1100_gpio_chip* %0, %struct.sa1100_gpio_chip** %2, align 8
  %6 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %2, align 8
  %7 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %6, i32 0, i32 3
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %2, align 8
  %10 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %2, align 8
  %13 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %11, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %2, align 8
  %17 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %2, align 8
  %20 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @R_GRER, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %24, i64 %26
  %28 = call i32 @writel_relaxed(i32 %23, i8* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @R_GFER, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %30, i64 %32
  %34 = call i32 @writel_relaxed(i32 %29, i8* %33)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
