; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_get_trigger_value_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_get_trigger_value_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.at91_adc_trigger = type { i64, i32 }
%struct.at91_adc_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s-dev%d-%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.at91_adc_trigger*, i8*)* @at91_adc_get_trigger_value_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_get_trigger_value_by_name(%struct.iio_dev* %0, %struct.at91_adc_trigger* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.at91_adc_trigger*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.at91_adc_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.at91_adc_trigger* %1, %struct.at91_adc_trigger** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %11)
  store %struct.at91_adc_state* %12, %struct.at91_adc_state** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %68, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %16 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %13
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %22 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.at91_adc_trigger*, %struct.at91_adc_trigger** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.at91_adc_trigger, %struct.at91_adc_trigger* %27, i64 %29
  %31 = getelementptr inbounds %struct.at91_adc_trigger, %struct.at91_adc_trigger* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @kasprintf(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %19
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %74

39:                                               ; preds = %19
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @strcmp(i8* %40, i8* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = load %struct.at91_adc_trigger*, %struct.at91_adc_trigger** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.at91_adc_trigger, %struct.at91_adc_trigger* %47, i64 %49
  %51 = getelementptr inbounds %struct.at91_adc_trigger, %struct.at91_adc_trigger* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %74

57:                                               ; preds = %44
  %58 = load %struct.at91_adc_trigger*, %struct.at91_adc_trigger** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.at91_adc_trigger, %struct.at91_adc_trigger* %58, i64 %60
  %62 = getelementptr inbounds %struct.at91_adc_trigger, %struct.at91_adc_trigger* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %74

65:                                               ; preds = %39
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @kfree(i8* %66)
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %13

71:                                               ; preds = %13
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %57, %54, %36
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
