; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_free_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_free_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gpio_chip* }
%struct.gpio_chip = type { i32 (%struct.gpio_chip*, i32)*, i32 }

@gpio_lock = common dso_local global i32 0, align 4
@FLAG_REQUESTED = common dso_local global i32 0, align 4
@FLAG_ACTIVE_LOW = common dso_local global i32 0, align 4
@FLAG_OPEN_DRAIN = common dso_local global i32 0, align 4
@FLAG_OPEN_SOURCE = common dso_local global i32 0, align 4
@FLAG_IS_HOGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_desc*)* @gpiod_free_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiod_free_commit(%struct.gpio_desc* %0) #0 {
  %2 = alloca %struct.gpio_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.gpio_chip*, align 8
  store %struct.gpio_desc* %0, %struct.gpio_desc** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = call i32 (...) @might_sleep()
  %7 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %8 = call i32 @gpiod_unexport(%struct.gpio_desc* %7)
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %9)
  %11 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %12 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %14, align 8
  store %struct.gpio_chip* %15, %struct.gpio_chip** %5, align 8
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %17 = icmp ne %struct.gpio_chip* %16, null
  br i1 %17, label %18, label %72

18:                                               ; preds = %1
  %19 = load i32, i32* @FLAG_REQUESTED, align 4
  %20 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %21 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %18
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 0
  %27 = load i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.gpio_chip*, i32)* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %30)
  %32 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %33 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @might_sleep_if(i32 %34)
  %36 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %37 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %36, i32 0, i32 0
  %38 = load i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)** %37, align 8
  %39 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %40 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %41 = call i32 @gpio_chip_hwgpio(%struct.gpio_desc* %40)
  %42 = call i32 %38(%struct.gpio_chip* %39, i32 %41)
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %43)
  br label %45

45:                                               ; preds = %29, %24
  %46 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %47 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kfree_const(i32 %48)
  %50 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %51 = call i32 @desc_set_label(%struct.gpio_desc* %50, i32* null)
  %52 = load i32, i32* @FLAG_ACTIVE_LOW, align 4
  %53 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %54 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %53, i32 0, i32 0
  %55 = call i32 @clear_bit(i32 %52, i32* %54)
  %56 = load i32, i32* @FLAG_REQUESTED, align 4
  %57 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %58 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %57, i32 0, i32 0
  %59 = call i32 @clear_bit(i32 %56, i32* %58)
  %60 = load i32, i32* @FLAG_OPEN_DRAIN, align 4
  %61 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %62 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %61, i32 0, i32 0
  %63 = call i32 @clear_bit(i32 %60, i32* %62)
  %64 = load i32, i32* @FLAG_OPEN_SOURCE, align 4
  %65 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %66 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %65, i32 0, i32 0
  %67 = call i32 @clear_bit(i32 %64, i32* %66)
  %68 = load i32, i32* @FLAG_IS_HOGGED, align 4
  %69 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %70 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %69, i32 0, i32 0
  %71 = call i32 @clear_bit(i32 %68, i32* %70)
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %45, %18, %1
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %73)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @gpiod_unexport(%struct.gpio_desc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i32 @gpio_chip_hwgpio(%struct.gpio_desc*) #1

declare dso_local i32 @kfree_const(i32) #1

declare dso_local i32 @desc_set_label(%struct.gpio_desc*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
