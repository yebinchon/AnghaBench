; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-stmpe.c_stmpe_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-stmpe.c_stmpe_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.stmpe_gpio = type { %struct.stmpe* }
%struct.stmpe = type { i32* }

@STMPE_IDX_GPSR_LSB = common dso_local global i64 0, align 8
@STMPE_IDX_GPCR_LSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @stmpe_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmpe_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stmpe_gpio*, align 8
  %8 = alloca %struct.stmpe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.stmpe_gpio* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.stmpe_gpio* %13, %struct.stmpe_gpio** %7, align 8
  %14 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %7, align 8
  %15 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %14, i32 0, i32 0
  %16 = load %struct.stmpe*, %struct.stmpe** %15, align 8
  store %struct.stmpe* %16, %struct.stmpe** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @STMPE_IDX_GPSR_LSB, align 8
  br label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @STMPE_IDX_GPCR_LSB, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load %struct.stmpe*, %struct.stmpe** %8, align 8
  %27 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = udiv i32 %30, 8
  %32 = add i32 %29, %31
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %5, align 4
  %37 = urem i32 %36, 8
  %38 = call i32 @BIT(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.stmpe*, %struct.stmpe** %8, align 8
  %40 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @STMPE_IDX_GPSR_LSB, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.stmpe*, %struct.stmpe** %8, align 8
  %46 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @STMPE_IDX_GPCR_LSB, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %44, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %23
  %53 = load %struct.stmpe*, %struct.stmpe** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  br label %61

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = call i32 @stmpe_set_bits(%struct.stmpe* %53, i32 %54, i32 %55, i32 %62)
  br label %69

64:                                               ; preds = %23
  %65 = load %struct.stmpe*, %struct.stmpe** %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @stmpe_reg_write(%struct.stmpe* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %61
  ret void
}

declare dso_local %struct.stmpe_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @stmpe_set_bits(%struct.stmpe*, i32, i32, i32) #1

declare dso_local i32 @stmpe_reg_write(%struct.stmpe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
