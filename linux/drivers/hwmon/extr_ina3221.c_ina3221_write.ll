; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ina3221_data = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64)* @ina3221_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina3221_write(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ina3221_data*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.ina3221_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.ina3221_data* %14, %struct.ina3221_data** %11, align 8
  %15 = load %struct.ina3221_data*, %struct.ina3221_data** %11, align 8
  %16 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %36 [
    i32 130, label %19
    i32 128, label %24
    i32 129, label %30
  ]

19:                                               ; preds = %5
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @ina3221_write_chip(%struct.device* %20, i32 %21, i64 %22)
  store i32 %23, i32* %12, align 4
  br label %39

24:                                               ; preds = %5
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @ina3221_write_enable(%struct.device* %25, i32 %27, i64 %28)
  store i32 %29, i32* %12, align 4
  br label %39

30:                                               ; preds = %5
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @ina3221_write_curr(%struct.device* %31, i32 %32, i32 %33, i64 %34)
  store i32 %35, i32* %12, align 4
  br label %39

36:                                               ; preds = %5
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %36, %30, %24, %19
  %40 = load %struct.ina3221_data*, %struct.ina3221_data** %11, align 8
  %41 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %12, align 4
  ret i32 %43
}

declare dso_local %struct.ina3221_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ina3221_write_chip(%struct.device*, i32, i64) #1

declare dso_local i32 @ina3221_write_enable(%struct.device*, i32, i64) #1

declare dso_local i32 @ina3221_write_curr(%struct.device*, i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
