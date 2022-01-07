; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_regulators_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_regulators_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxas21002c_data = type { i8*, i8*, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vddio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fxas21002c_data*)* @fxas21002c_regulators_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxas21002c_regulators_get(%struct.fxas21002c_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fxas21002c_data*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.fxas21002c_data* %0, %struct.fxas21002c_data** %3, align 8
  %5 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %6 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.device* @regmap_get_device(i32 %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @devm_regulator_get(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %14 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %16 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %22 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @PTR_ERR(i8* %23)
  store i32 %24, i32* %2, align 4
  br label %36

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @devm_regulator_get(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %31 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %33 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @PTR_ERR_OR_ZERO(i8* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %25, %20
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i8* @devm_regulator_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
