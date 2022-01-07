; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_do_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_do_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vadc_priv = type { i32, i32, i32, i64 }
%struct.vadc_channel_prop = type { i32 }

@VADC_CONV_REQ = common dso_local global i32 0, align 4
@VADC_CONV_REQ_SET = common dso_local global i32 0, align 4
@VADC_CONV_TIME_MIN_US = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"conversion failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vadc_priv*, %struct.vadc_channel_prop*, i32*)* @vadc_do_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vadc_do_conversion(%struct.vadc_priv* %0, %struct.vadc_channel_prop* %1, i32* %2) #0 {
  %4 = alloca %struct.vadc_priv*, align 8
  %5 = alloca %struct.vadc_channel_prop*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vadc_priv* %0, %struct.vadc_priv** %4, align 8
  store %struct.vadc_channel_prop* %1, %struct.vadc_channel_prop** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %10 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %13 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %5, align 8
  %14 = call i32 @vadc_configure(%struct.vadc_priv* %12, %struct.vadc_channel_prop* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %90

18:                                               ; preds = %3
  %19 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %20 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %25 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %24, i32 0, i32 2
  %26 = call i32 @reinit_completion(i32* %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %29 = call i32 @vadc_set_state(%struct.vadc_priv* %28, i32 1)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %90

33:                                               ; preds = %27
  %34 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %35 = load i32, i32* @VADC_CONV_REQ, align 4
  %36 = load i32, i32* @VADC_CONV_REQ_SET, align 4
  %37 = call i32 @vadc_write(%struct.vadc_priv* %34, i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %79

41:                                               ; preds = %33
  %42 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %5, align 8
  %43 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load i32, i32* @VADC_CONV_TIME_MIN_US, align 4
  %47 = mul nsw i32 %45, %46
  %48 = mul nsw i32 %47, 2
  store i32 %48, i32* %7, align 4
  %49 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %50 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @vadc_poll_wait_eoc(%struct.vadc_priv* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %75

57:                                               ; preds = %41
  %58 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %59 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @wait_for_completion_timeout(i32* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %79

67:                                               ; preds = %57
  %68 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %69 = load i32, i32* @VADC_CONV_TIME_MIN_US, align 4
  %70 = call i32 @vadc_poll_wait_eoc(%struct.vadc_priv* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %79

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %53
  %76 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @vadc_read_result(%struct.vadc_priv* %76, i32* %77)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %75, %73, %64, %40
  %80 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %81 = call i32 @vadc_set_state(%struct.vadc_priv* %80, i32 0)
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %86 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %79
  br label %90

90:                                               ; preds = %89, %32, %17
  %91 = load %struct.vadc_priv*, %struct.vadc_priv** %4, align 8
  %92 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vadc_configure(%struct.vadc_priv*, %struct.vadc_channel_prop*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @vadc_set_state(%struct.vadc_priv*, i32) #1

declare dso_local i32 @vadc_write(%struct.vadc_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vadc_poll_wait_eoc(%struct.vadc_priv*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @vadc_read_result(%struct.vadc_priv*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
