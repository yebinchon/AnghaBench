; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-htc-egpio.c_egpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-htc-egpio.c_egpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i64 }
%struct.egpio_chip = type { i32, i32, i32, i32 }
%struct.egpio_info = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"egpio_get_value(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"readw(%p + %x) = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @egpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @egpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.egpio_chip*, align 8
  %7 = alloca %struct.egpio_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %20 = call %struct.egpio_chip* @gpiochip_get_data(%struct.gpio_chip* %19)
  store %struct.egpio_chip* %20, %struct.egpio_chip** %6, align 8
  %21 = load %struct.egpio_chip*, %struct.egpio_chip** %6, align 8
  %22 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.egpio_info* @dev_get_drvdata(i32 %23)
  store %struct.egpio_info* %24, %struct.egpio_info** %7, align 8
  %25 = load %struct.egpio_info*, %struct.egpio_info** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @egpio_bit(%struct.egpio_info* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.egpio_chip*, %struct.egpio_chip** %6, align 8
  %29 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.egpio_info*, %struct.egpio_info** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @egpio_pos(%struct.egpio_info* %31, i32 %32)
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.egpio_chip*, %struct.egpio_chip** %6, align 8
  %37 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %36, i32 0, i32 2
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %2
  %41 = load %struct.egpio_chip*, %struct.egpio_chip** %6, align 8
  %42 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %72

51:                                               ; preds = %2
  %52 = load %struct.egpio_info*, %struct.egpio_info** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @egpio_readw(%struct.egpio_info* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.egpio_info*, %struct.egpio_info** %7, align 8
  %56 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.egpio_info*, %struct.egpio_info** %7, align 8
  %60 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %58, %61
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %51, %40
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local %struct.egpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local %struct.egpio_info* @dev_get_drvdata(i32) #1

declare dso_local i32 @egpio_bit(%struct.egpio_info*, i32) #1

declare dso_local i32 @egpio_pos(%struct.egpio_info*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @egpio_readw(%struct.egpio_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
