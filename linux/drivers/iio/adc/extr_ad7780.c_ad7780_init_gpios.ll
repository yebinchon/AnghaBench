; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7780.c_ad7780_init_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7780.c_ad7780_init_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ad7780_state = type { i8*, i8*, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to request powerdown GPIO: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"adi,gain\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to request gain GPIO: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"adi,filter\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to request filter GPIO: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ad7780_state*)* @ad7780_init_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7780_init_gpios(%struct.device* %0, %struct.ad7780_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ad7780_state*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ad7780_state* %1, %struct.ad7780_state** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %9 = call i8* @devm_gpiod_get_optional(%struct.device* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.ad7780_state*, %struct.ad7780_state** %5, align 8
  %11 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load %struct.ad7780_state*, %struct.ad7780_state** %5, align 8
  %13 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %12, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @IS_ERR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.ad7780_state*, %struct.ad7780_state** %5, align 8
  %19 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @PTR_ERR(i8* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %75

26:                                               ; preds = %2
  %27 = load %struct.ad7780_state*, %struct.ad7780_state** %5, align 8
  %28 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %75

34:                                               ; preds = %26
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %37 = call i8* @devm_gpiod_get_optional(%struct.device* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.ad7780_state*, %struct.ad7780_state** %5, align 8
  %39 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ad7780_state*, %struct.ad7780_state** %5, align 8
  %41 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @IS_ERR(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %34
  %46 = load %struct.ad7780_state*, %struct.ad7780_state** %5, align 8
  %47 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @PTR_ERR(i8* %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %75

54:                                               ; preds = %34
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %57 = call i8* @devm_gpiod_get_optional(%struct.device* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load %struct.ad7780_state*, %struct.ad7780_state** %5, align 8
  %59 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ad7780_state*, %struct.ad7780_state** %5, align 8
  %61 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %54
  %66 = load %struct.ad7780_state*, %struct.ad7780_state** %5, align 8
  %67 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %65, %45, %33, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
