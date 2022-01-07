; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_lm95234_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_lm95234_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32*)* @lm95234_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm95234_read_temp(%struct.i2c_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %3
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 1
  %16 = call i32 @LM95234_REG_UTEMPH(i32 %15)
  %17 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %13, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %70

22:                                               ; preds = %12
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 8
  store i32 %24, i32* %9, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @LM95234_REG_UTEMPL(i32 %27)
  %29 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %70

34:                                               ; preds = %22
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %3
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %40
  %44 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @LM95234_REG_TEMPH(i32 %45)
  %47 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %44, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %70

52:                                               ; preds = %43
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 %53, 8
  store i32 %54, i32* %9, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @LM95234_REG_TEMPL(i32 %56)
  %58 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %55, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %70

63:                                               ; preds = %52
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %40
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %61, %50, %32, %20
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM95234_REG_UTEMPH(i32) #1

declare dso_local i32 @LM95234_REG_UTEMPL(i32) #1

declare dso_local i32 @LM95234_REG_TEMPH(i32) #1

declare dso_local i32 @LM95234_REG_TEMPL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
