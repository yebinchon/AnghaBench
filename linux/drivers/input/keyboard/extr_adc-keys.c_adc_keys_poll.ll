; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adc-keys.c_adc_keys_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adc-keys.c_adc_keys_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { i32, %struct.adc_keys_state* }
%struct.adc_keys_state = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @adc_keys_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adc_keys_poll(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.adc_keys_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %10 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %11 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %10, i32 0, i32 1
  %12 = load %struct.adc_keys_state*, %struct.adc_keys_state** %11, align 8
  store %struct.adc_keys_state* %12, %struct.adc_keys_state** %3, align 8
  store i64 4294967295, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.adc_keys_state*, %struct.adc_keys_state** %3, align 8
  %14 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @iio_read_channel_processed(i32 %15, i32* %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.adc_keys_state*, %struct.adc_keys_state** %3, align 8
  %24 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  br label %63

26:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %59, %26
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.adc_keys_state*, %struct.adc_keys_state** %3, align 8
  %30 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %27
  %34 = load %struct.adc_keys_state*, %struct.adc_keys_state** %3, align 8
  %35 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i64 @abs(i32 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %33
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %8, align 8
  %50 = load %struct.adc_keys_state*, %struct.adc_keys_state** %3, align 8
  %51 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %48, %33
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %27

62:                                               ; preds = %27
  br label %63

63:                                               ; preds = %62, %22
  %64 = load %struct.adc_keys_state*, %struct.adc_keys_state** %3, align 8
  %65 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %66, %67
  %69 = call i64 @abs(i32 %68)
  %70 = load i64, i64* %8, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %72, %63
  %74 = load %struct.adc_keys_state*, %struct.adc_keys_state** %3, align 8
  %75 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %73
  %79 = load %struct.adc_keys_state*, %struct.adc_keys_state** %3, align 8
  %80 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %86 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.adc_keys_state*, %struct.adc_keys_state** %3, align 8
  %89 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @input_report_key(i32 %87, i32 %90, i32 0)
  br label %92

92:                                               ; preds = %84, %78, %73
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %97 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @input_report_key(i32 %98, i32 %99, i32 1)
  br label %101

101:                                              ; preds = %95, %92
  %102 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %103 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @input_sync(i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.adc_keys_state*, %struct.adc_keys_state** %3, align 8
  %108 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  ret void
}

declare dso_local i32 @iio_read_channel_processed(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
