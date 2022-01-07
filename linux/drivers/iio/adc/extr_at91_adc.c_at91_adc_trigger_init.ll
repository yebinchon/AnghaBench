; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_trigger_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_trigger_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.at91_adc_state = type { i32, i32**, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not allocate trigger %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @at91_adc_trigger_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_trigger_init(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.at91_adc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %7)
  store %struct.at91_adc_state* %8, %struct.at91_adc_state** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %9, i32 0, i32 0
  %11 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %12 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32** @devm_kcalloc(i32* %10, i32 %13, i32 8, i32 %14)
  %16 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %17 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %16, i32 0, i32 1
  store i32** %15, i32*** %17, align 8
  %18 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %19 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = icmp eq i32** %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %110

25:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %79, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %29 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %26
  %33 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %34 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %44 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %79

48:                                               ; preds = %42, %32
  %49 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %50 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %51 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = call i32* @at91_adc_allocate_trigger(%struct.iio_dev* %49, %struct.TYPE_2__* %55)
  %57 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %58 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* %56, i32** %62, align 8
  %63 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %64 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %48
  %72 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %83

78:                                               ; preds = %48
  br label %79

79:                                               ; preds = %78, %47
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %26

82:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %112

83:                                               ; preds = %71
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %106, %83
  %87 = load i32, i32* %5, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %91 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %90, i32 0, i32 1
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @iio_trigger_unregister(i32* %96)
  %98 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %99 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %98, i32 0, i32 1
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @iio_trigger_free(i32* %104)
  br label %106

106:                                              ; preds = %89
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %5, align 4
  br label %86

109:                                              ; preds = %86
  br label %110

110:                                              ; preds = %109, %22
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %82
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32** @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32* @at91_adc_allocate_trigger(%struct.iio_dev*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @iio_trigger_unregister(i32*) #1

declare dso_local i32 @iio_trigger_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
