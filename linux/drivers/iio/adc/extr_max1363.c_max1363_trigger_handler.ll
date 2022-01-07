; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32, i64 }
%struct.max1363_state = type { i32 (i32, i32*, i64)*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MAX1363_MAX_CHANNELS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max1363_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1363_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.max1363_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %13, %struct.iio_poll_func** %5, align 8
  %14 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %15 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %14, i32 0, i32 0
  %16 = load %struct.iio_dev*, %struct.iio_dev** %15, align 8
  store %struct.iio_dev* %16, %struct.iio_dev** %6, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = call %struct.max1363_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.max1363_state* %18, %struct.max1363_state** %7, align 8
  %19 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %20 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MAX1363_MAX_CHANNELS, align 4
  %25 = call i64 @bitmap_weight(i32 %23, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %27 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 8
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i64, i64* %11, align 8
  %34 = mul i64 %33, 2
  store i64 %34, i64* %10, align 8
  br label %37

35:                                               ; preds = %2
  %36 = load i64, i64* %11, align 8
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = urem i64 %45, 4
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i64, i64* %10, align 8
  %50 = urem i64 %49, 4
  %51 = sub i64 4, %50
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %48, %42
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i64, i64* %11, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %107

59:                                               ; preds = %55
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32* @kmalloc(i64 %60, i32 %61)
  store i32* %62, i32** %8, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %107

66:                                               ; preds = %59
  %67 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %68 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 8
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %75 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %74, i32 0, i32 0
  %76 = load i32 (i32, i32*, i64)*, i32 (i32, i32*, i64)** %75, align 8
  %77 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %78 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* %11, align 8
  %82 = mul i64 %81, 2
  %83 = call i32 %76(i32 %79, i32* %80, i64 %82)
  store i32 %83, i32* %9, align 4
  br label %94

84:                                               ; preds = %66
  %85 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %86 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %85, i32 0, i32 0
  %87 = load i32 (i32, i32*, i64)*, i32 (i32, i32*, i64)** %86, align 8
  %88 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %89 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i32 %87(i32 %90, i32* %91, i64 %92)
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %84, %73
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %104

98:                                               ; preds = %94
  %99 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %102 = call i32 @iio_get_time_ns(%struct.iio_dev* %101)
  %103 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %99, i32* %100, i32 %102)
  br label %104

104:                                              ; preds = %98, %97
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @kfree(i32* %105)
  br label %107

107:                                              ; preds = %104, %65, %58
  %108 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %109 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @iio_trigger_notify_done(i32 %110)
  %112 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %112
}

declare dso_local %struct.max1363_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @bitmap_weight(i32, i32) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
