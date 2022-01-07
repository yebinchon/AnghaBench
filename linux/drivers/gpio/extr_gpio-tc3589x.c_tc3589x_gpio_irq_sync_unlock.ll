; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_irq_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_irq_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.tc3589x_gpio = type { i64**, i64**, i32, %struct.tc3589x* }
%struct.tc3589x = type { i32 }

@tc3589x_gpio_irq_sync_unlock.regmap = internal constant [136 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 128, i64 129, i64 130, i64 131], align 16
@CACHE_NR_REGS = common dso_local global i32 0, align 4
@CACHE_NR_BANKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @tc3589x_gpio_irq_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc3589x_gpio_irq_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.tc3589x_gpio*, align 8
  %5 = alloca %struct.tc3589x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.gpio_chip* %11, %struct.gpio_chip** %3, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %13 = call %struct.tc3589x_gpio* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.tc3589x_gpio* %13, %struct.tc3589x_gpio** %4, align 8
  %14 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %4, align 8
  %15 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %14, i32 0, i32 3
  %16 = load %struct.tc3589x*, %struct.tc3589x** %15, align 8
  store %struct.tc3589x* %16, %struct.tc3589x** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %80, %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CACHE_NR_REGS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %83

21:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %76, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @CACHE_NR_BANKS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %22
  %27 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %4, align 8
  %28 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %27, i32 0, i32 0
  %29 = load i64**, i64*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64*, i64** %29, i64 %31
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %4, align 8
  %39 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %38, i32 0, i32 1
  %40 = load i64**, i64*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64*, i64** %40, i64 %42
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %26
  br label %76

53:                                               ; preds = %26
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %4, align 8
  %56 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %55, i32 0, i32 0
  %57 = load i64**, i64*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64*, i64** %57, i64 %59
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %54, i64* %64, align 8
  %65 = load %struct.tc3589x*, %struct.tc3589x** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [136 x i64], [136 x i64]* @tc3589x_gpio_irq_sync_unlock.regmap, i64 0, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 %70, 8
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @tc3589x_reg_write(%struct.tc3589x* %65, i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %53, %52
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %22

79:                                               ; preds = %22
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %17

83:                                               ; preds = %17
  %84 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %4, align 8
  %85 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %84, i32 0, i32 2
  %86 = call i32 @mutex_unlock(i32* %85)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.tc3589x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @tc3589x_reg_write(%struct.tc3589x*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
