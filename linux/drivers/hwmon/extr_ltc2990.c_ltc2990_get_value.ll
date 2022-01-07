; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2990.c_ltc2990_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2990.c_ltc2990_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@LTC2990_VCC_MSB = common dso_local global i32 0, align 4
@LTC2990_V1_MSB = common dso_local global i32 0, align 4
@LTC2990_V2_MSB = common dso_local global i32 0, align 4
@LTC2990_V3_MSB = common dso_local global i32 0, align 4
@LTC2990_V4_MSB = common dso_local global i32 0, align 4
@LTC2990_TINT_MSB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32*)* @ltc2990_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2990_get_value(%struct.i2c_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %23 [
    i32 135, label %11
    i32 134, label %13
    i32 137, label %13
    i32 129, label %13
    i32 133, label %15
    i32 132, label %17
    i32 136, label %17
    i32 128, label %17
    i32 131, label %19
    i32 130, label %21
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @LTC2990_VCC_MSB, align 4
  store i32 %12, i32* %9, align 4
  br label %26

13:                                               ; preds = %3, %3, %3
  %14 = load i32, i32* @LTC2990_V1_MSB, align 4
  store i32 %14, i32* %9, align 4
  br label %26

15:                                               ; preds = %3
  %16 = load i32, i32* @LTC2990_V2_MSB, align 4
  store i32 %16, i32* %9, align 4
  br label %26

17:                                               ; preds = %3, %3, %3
  %18 = load i32, i32* @LTC2990_V3_MSB, align 4
  store i32 %18, i32* %9, align 4
  br label %26

19:                                               ; preds = %3
  %20 = load i32, i32* @LTC2990_V4_MSB, align 4
  store i32 %20, i32* %9, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @LTC2990_TINT_MSB, align 4
  store i32 %22, i32* %9, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %68

26:                                               ; preds = %21, %19, %17, %15, %13, %11
  %27 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %68

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %64 [
    i32 130, label %39
    i32 129, label %39
    i32 128, label %39
    i32 137, label %45
    i32 136, label %45
    i32 135, label %51
    i32 134, label %58
    i32 133, label %58
    i32 132, label %58
    i32 131, label %58
  ]

39:                                               ; preds = %37, %37, %37
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @sign_extend32(i32 %40, i32 12)
  %42 = mul nsw i32 %41, 1000
  %43 = sdiv i32 %42, 16
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %67

45:                                               ; preds = %37, %37
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @sign_extend32(i32 %46, i32 14)
  %48 = mul nsw i32 %47, 1942
  %49 = sdiv i32 %48, 100
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %67

51:                                               ; preds = %37
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @sign_extend32(i32 %52, i32 14)
  %54 = mul nsw i32 %53, 30518
  %55 = sdiv i32 %54, 100000
  %56 = add nsw i32 %55, 2500
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %67

58:                                               ; preds = %37, %37, %37, %37
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @sign_extend32(i32 %59, i32 14)
  %61 = mul nsw i32 %60, 30518
  %62 = sdiv i32 %61, 100000
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  br label %67

64:                                               ; preds = %37
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; preds = %58, %51, %45, %39
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %64, %35, %23
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
