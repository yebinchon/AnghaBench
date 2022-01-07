; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_init_channel_vref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_init_channel_vref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7124_state = type { %struct.TYPE_6__, %struct.TYPE_4__*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [73 x i8] c"Error, trying to use external voltage reference without a %s regulator.\0A\00", align 1
@ad7124_ref_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid reference %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7124_state*, i32)* @ad7124_init_channel_vref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7124_init_channel_vref(%struct.ad7124_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad7124_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad7124_state* %0, %struct.ad7124_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ad7124_state*, %struct.ad7124_state** %4, align 8
  %8 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %79 [
    i32 129, label %16
    i32 128, label %16
    i32 131, label %16
    i32 130, label %71
  ]

16:                                               ; preds = %2, %2, %2
  %17 = load %struct.ad7124_state*, %struct.ad7124_state** %4, align 8
  %18 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IS_ERR(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %16
  %27 = load %struct.ad7124_state*, %struct.ad7124_state** %4, align 8
  %28 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** @ad7124_ref_names, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.ad7124_state*, %struct.ad7124_state** %4, align 8
  %39 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %90

46:                                               ; preds = %16
  %47 = load %struct.ad7124_state*, %struct.ad7124_state** %4, align 8
  %48 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @regulator_get_voltage(i32 %53)
  %55 = load %struct.ad7124_state*, %struct.ad7124_state** %4, align 8
  %56 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %54, i32* %61, align 4
  %62 = load %struct.ad7124_state*, %struct.ad7124_state** %4, align 8
  %63 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %69, 1000
  store i32 %70, i32* %68, align 4
  br label %89

71:                                               ; preds = %2
  %72 = load %struct.ad7124_state*, %struct.ad7124_state** %4, align 8
  %73 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 2500, i32* %78, align 4
  br label %89

79:                                               ; preds = %2
  %80 = load %struct.ad7124_state*, %struct.ad7124_state** %4, align 8
  %81 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %90

89:                                               ; preds = %71, %46
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %79, %26
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
