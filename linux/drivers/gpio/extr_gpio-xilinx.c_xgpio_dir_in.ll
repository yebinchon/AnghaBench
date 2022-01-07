; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xilinx.c_xgpio_dir_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xilinx.c_xgpio_dir_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.xgpio_instance = type { i32*, i32*, i64 }

@XGPIO_TRI_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @xgpio_dir_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgpio_dir_in(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.xgpio_instance*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.xgpio_instance* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.xgpio_instance* %10, %struct.xgpio_instance** %6, align 8
  %11 = load %struct.xgpio_instance*, %struct.xgpio_instance** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @xgpio_index(%struct.xgpio_instance* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.xgpio_instance*, %struct.xgpio_instance** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @xgpio_offset(%struct.xgpio_instance* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.xgpio_instance*, %struct.xgpio_instance** %6, align 8
  %18 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = load %struct.xgpio_instance*, %struct.xgpio_instance** %6, align 8
  %28 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %26
  store i32 %34, i32* %32, align 4
  %35 = load %struct.xgpio_instance*, %struct.xgpio_instance** %6, align 8
  %36 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XGPIO_TRI_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.xgpio_instance*, %struct.xgpio_instance** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @xgpio_regoffset(%struct.xgpio_instance* %40, i32 %41)
  %43 = add nsw i64 %39, %42
  %44 = load %struct.xgpio_instance*, %struct.xgpio_instance** %6, align 8
  %45 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @xgpio_writereg(i64 %43, i32 %50)
  %52 = load %struct.xgpio_instance*, %struct.xgpio_instance** %6, align 8
  %53 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret i32 0
}

declare dso_local %struct.xgpio_instance* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @xgpio_index(%struct.xgpio_instance*, i32) #1

declare dso_local i32 @xgpio_offset(%struct.xgpio_instance*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @xgpio_writereg(i64, i32) #1

declare dso_local i64 @xgpio_regoffset(%struct.xgpio_instance*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
