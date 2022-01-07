; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64*)* @nct7904_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct7904_read(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %37 [
    i32 130, label %13
    i32 131, label %19
    i32 129, label %25
    i32 128, label %31
  ]

13:                                               ; preds = %5
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i64*, i64** %11, align 8
  %18 = call i32 @nct7904_read_in(%struct.device* %14, i32 %15, i32 %16, i64* %17)
  store i32 %18, i32* %6, align 4
  br label %40

19:                                               ; preds = %5
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i64*, i64** %11, align 8
  %24 = call i32 @nct7904_read_fan(%struct.device* %20, i32 %21, i32 %22, i64* %23)
  store i32 %24, i32* %6, align 4
  br label %40

25:                                               ; preds = %5
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i64*, i64** %11, align 8
  %30 = call i32 @nct7904_read_pwm(%struct.device* %26, i32 %27, i32 %28, i64* %29)
  store i32 %30, i32* %6, align 4
  br label %40

31:                                               ; preds = %5
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i64*, i64** %11, align 8
  %36 = call i32 @nct7904_read_temp(%struct.device* %32, i32 %33, i32 %34, i64* %35)
  store i32 %36, i32* %6, align 4
  br label %40

37:                                               ; preds = %5
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %31, %25, %19, %13
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @nct7904_read_in(%struct.device*, i32, i32, i64*) #1

declare dso_local i32 @nct7904_read_fan(%struct.device*, i32, i32, i64*) #1

declare dso_local i32 @nct7904_read_pwm(%struct.device*, i32, i32, i64*) #1

declare dso_local i32 @nct7904_read_temp(%struct.device*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
