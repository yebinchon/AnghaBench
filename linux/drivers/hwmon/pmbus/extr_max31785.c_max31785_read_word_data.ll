; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max31785.c_max31785_read_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max31785.c_max31785_read_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@MAX31785_NR_PAGES = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @max31785_read_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31785_read_word_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %53 [
    i32 130, label %11
    i32 131, label %33
    i32 129, label %45
    i32 128, label %49
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAX31785_NR_PAGES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @ENODATA, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %58

18:                                               ; preds = %11
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MAX31785_NR_PAGES, align 4
  %22 = sub nsw i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @max31785_read_long_data(%struct.i2c_client* %19, i32 %22, i32 %23, i32* %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %58

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 65535
  store i32 %32, i32* %9, align 4
  br label %56

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @MAX31785_NR_PAGES, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ENOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  br label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @ENODATA, align 4
  %42 = sub nsw i32 0, %41
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %39, %37 ], [ %42, %40 ]
  store i32 %44, i32* %9, align 4
  br label %56

45:                                               ; preds = %3
  %46 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @max31785_get_pwm(%struct.i2c_client* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  br label %56

49:                                               ; preds = %3
  %50 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @max31785_get_pwm_mode(%struct.i2c_client* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %56

53:                                               ; preds = %3
  %54 = load i32, i32* @ENODATA, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %49, %45, %43, %29
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %27, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @max31785_read_long_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @max31785_get_pwm(%struct.i2c_client*, i32) #1

declare dso_local i32 @max31785_get_pwm_mode(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
