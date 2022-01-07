; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_hw_set_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_hw_set_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adt7475_data = type { i32*, i32*, i32** }

@EINVAL = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32)* @hw_set_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_set_pwm(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.adt7475_data*, align 8
  %11 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = call %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.adt7475_data* %13, %struct.adt7475_data** %10, align 8
  store i64 0, i64* %11, align 8
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %28 [
    i32 0, label %15
    i32 1, label %16
    i32 2, label %17
  ]

15:                                               ; preds = %4
  store i64 3, i64* %11, align 8
  br label %31

16:                                               ; preds = %4
  store i64 7, i64* %11, align 8
  br label %31

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %24 [
    i32 1, label %19
    i32 2, label %20
    i32 4, label %21
    i32 6, label %22
    i32 7, label %23
  ]

19:                                               ; preds = %17
  store i64 0, i64* %11, align 8
  br label %27

20:                                               ; preds = %17
  store i64 1, i64* %11, align 8
  br label %27

21:                                               ; preds = %17
  store i64 2, i64* %11, align 8
  br label %27

22:                                               ; preds = %17
  store i64 5, i64* %11, align 8
  br label %27

23:                                               ; preds = %17
  store i64 6, i64* %11, align 8
  br label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %88

27:                                               ; preds = %23, %22, %21, %20, %19
  br label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %88

31:                                               ; preds = %27, %16, %15
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %34 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %41 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %47 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %46, i32 0, i32 2
  %48 = load i32**, i32*** %47, align 8
  %49 = load i64, i64* @CONTROL, align 8
  %50 = getelementptr inbounds i32*, i32** %48, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, -225
  store i32 %56, i32* %54, align 4
  %57 = load i64, i64* %11, align 8
  %58 = and i64 %57, 7
  %59 = shl i64 %58, 5
  %60 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %61 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %60, i32 0, i32 2
  %62 = load i32**, i32*** %61, align 8
  %63 = load i64, i64* @CONTROL, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = or i64 %70, %59
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @PWM_CONFIG_REG(i32 %74)
  %76 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %77 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %76, i32 0, i32 2
  %78 = load i32**, i32*** %77, align 8
  %79 = load i64, i64* @CONTROL, align 8
  %80 = getelementptr inbounds i32*, i32** %78, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %73, i32 %75, i64 %86)
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %31, %28, %24
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @PWM_CONFIG_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
