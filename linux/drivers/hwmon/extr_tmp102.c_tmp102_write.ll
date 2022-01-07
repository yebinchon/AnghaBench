; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp102.c_tmp102_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp102.c_tmp102_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tmp102 = type { i32 }

@TMP102_TLOW_REG = common dso_local global i32 0, align 4
@TMP102_THIGH_REG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64)* @tmp102_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp102_write(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tmp102*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = call %struct.tmp102* @dev_get_drvdata(%struct.device* %14)
  store %struct.tmp102* %15, %struct.tmp102** %12, align 8
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %21 [
    i32 128, label %17
    i32 129, label %19
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* @TMP102_TLOW_REG, align 4
  store i32 %18, i32* %13, align 4
  br label %24

19:                                               ; preds = %5
  %20 = load i32, i32* @TMP102_THIGH_REG, align 4
  store i32 %20, i32* %13, align 4
  br label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %34

24:                                               ; preds = %19, %17
  %25 = load i64, i64* %11, align 8
  %26 = call i64 @clamp_val(i64 %25, i32 -256000, i32 255000)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.tmp102*, %struct.tmp102** %12, align 8
  %28 = getelementptr inbounds %struct.tmp102, %struct.tmp102* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @tmp102_mC_to_reg(i64 %31)
  %33 = call i32 @regmap_write(i32 %29, i32 %30, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %24, %21
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local %struct.tmp102* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @tmp102_mC_to_reg(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
