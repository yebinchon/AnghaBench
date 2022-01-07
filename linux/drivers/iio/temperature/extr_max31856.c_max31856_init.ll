; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_max31856.c_max31856_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_max31856.c_max31856_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max31856_data = type { i32 }

@MAX31856_CR0_REG = common dso_local global i32 0, align 4
@MAX31856_CR0_AUTOCONVERT = common dso_local global i32 0, align 4
@MAX31856_CR1_REG = common dso_local global i32 0, align 4
@MAX31856_TC_TYPE_MASK = common dso_local global i32 0, align 4
@MAX31856_CR0_OCFAULT_MASK = common dso_local global i32 0, align 4
@MAX31856_CR0_OCFAULT = common dso_local global i32 0, align 4
@MAX31856_CR0_1SHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max31856_data*)* @max31856_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31856_init(%struct.max31856_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max31856_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max31856_data* %0, %struct.max31856_data** %3, align 8
  %7 = load %struct.max31856_data*, %struct.max31856_data** %3, align 8
  %8 = load i32, i32* @MAX31856_CR0_REG, align 4
  %9 = call i32 @max31856_read(%struct.max31856_data* %7, i32 %8, i32* %5, i32 1)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %72

14:                                               ; preds = %1
  %15 = load i32, i32* @MAX31856_CR0_AUTOCONVERT, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.max31856_data*, %struct.max31856_data** %3, align 8
  %20 = load i32, i32* @MAX31856_CR0_REG, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @max31856_write(%struct.max31856_data* %19, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %72

27:                                               ; preds = %14
  %28 = load %struct.max31856_data*, %struct.max31856_data** %3, align 8
  %29 = load i32, i32* @MAX31856_CR1_REG, align 4
  %30 = call i32 @max31856_read(%struct.max31856_data* %28, i32 %29, i32* %6, i32 1)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %72

35:                                               ; preds = %27
  %36 = load i32, i32* @MAX31856_TC_TYPE_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.max31856_data*, %struct.max31856_data** %3, align 8
  %41 = getelementptr inbounds %struct.max31856_data, %struct.max31856_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.max31856_data*, %struct.max31856_data** %3, align 8
  %46 = load i32, i32* @MAX31856_CR1_REG, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @max31856_write(%struct.max31856_data* %45, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %72

53:                                               ; preds = %35
  %54 = load i32, i32* @MAX31856_CR0_OCFAULT_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @MAX31856_CR0_OCFAULT, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @MAX31856_CR0_1SHOT, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @MAX31856_CR0_AUTOCONVERT, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load %struct.max31856_data*, %struct.max31856_data** %3, align 8
  %69 = load i32, i32* @MAX31856_CR0_REG, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @max31856_write(%struct.max31856_data* %68, i32 %69, i32 %70)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %53, %51, %33, %25, %12
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @max31856_read(%struct.max31856_data*, i32, i32*, i32) #1

declare dso_local i32 @max31856_write(%struct.max31856_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
