; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606.c_ad7606_request_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606.c_ad7606_request_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7606_state = type { i32, %struct.TYPE_2__*, i8*, i8*, i8*, i8*, i8*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"adi,conversion-start\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"adi,range\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"adi,first-data\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"adi,oversampling-ratio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7606_state*)* @ad7606_request_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7606_request_gpios(%struct.ad7606_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad7606_state*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.ad7606_state* %0, %struct.ad7606_state** %3, align 8
  %5 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %6 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %5, i32 0, i32 7
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %10 = call i8* @devm_gpiod_get(%struct.device* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %12 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %11, i32 0, i32 6
  store i8* %10, i8** %12, align 8
  %13 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %14 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %13, i32 0, i32 6
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @IS_ERR(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %20 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %19, i32 0, i32 6
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @PTR_ERR(i8* %21)
  store i32 %22, i32* %2, align 4
  br label %105

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %26 = call i8* @devm_gpiod_get_optional(%struct.device* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %28 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %30 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %29, i32 0, i32 5
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %36 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @PTR_ERR(i8* %37)
  store i32 %38, i32* %2, align 4
  br label %105

39:                                               ; preds = %23
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %42 = call i8* @devm_gpiod_get_optional(%struct.device* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %44 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %46 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %52 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %51, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @PTR_ERR(i8* %53)
  store i32 %54, i32* %2, align 4
  br label %105

55:                                               ; preds = %39
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %58 = call i8* @devm_gpiod_get_optional(%struct.device* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %60 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %62 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @IS_ERR(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %68 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @PTR_ERR(i8* %69)
  store i32 %70, i32* %2, align 4
  br label %105

71:                                               ; preds = %55
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load i32, i32* @GPIOD_IN, align 4
  %74 = call i8* @devm_gpiod_get_optional(%struct.device* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %76 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %78 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @IS_ERR(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %84 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @PTR_ERR(i8* %85)
  store i32 %86, i32* %2, align 4
  br label %105

87:                                               ; preds = %71
  %88 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %89 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %105

95:                                               ; preds = %87
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %98 = call i32 @devm_gpiod_get_array_optional(%struct.device* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %100 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %102 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @PTR_ERR_OR_ZERO(i32 %103)
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %95, %94, %82, %66, %50, %34, %18
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_gpiod_get_array_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
